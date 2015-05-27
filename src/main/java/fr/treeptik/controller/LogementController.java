package fr.treeptik.controller;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.Individu;
import fr.treeptik.model.Logement;
import fr.treeptik.model.LogementListDTO;
import fr.treeptik.model.Quartier;
import fr.treeptik.model.TypeLogement;
import fr.treeptik.service.CommuneService;
import fr.treeptik.service.IndividuService;
import fr.treeptik.service.LogementService;
import fr.treeptik.service.QuartierService;
import fr.treeptik.service.TypeLogementService;
import fr.treeptik.validator.LogementValidator;

@Controller
@RequestMapping("/")
public class LogementController implements Serializable {

	private static final long serialVersionUID = 1L;

	@Autowired
	private LogementService logementService;
	@Autowired
	private IndividuService individuService;
	@Autowired
	private CommuneService communeService;
	@Autowired
	private QuartierService quartierService;
	@Autowired
	private TypeLogementService typeLogementService;
	@Autowired
	private LogementValidator logementValidator;

	@RequestMapping("/ADMIN/list_logement.do")
	public ModelAndView listLogement() throws ServiceException {
		System.out.println("Logement");
		List<LogementListDTO> logementDTO = logementService.findAllData();
		System.out.println(logementDTO);

		return new ModelAndView("list_logement.jsp", "logementDTO", logementDTO);
	}

	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	public ModelAndView searchLogement() throws ServiceException {
		System.out.println("SearchLogement");

		return new ModelAndView("listings.html");
	}

	@RequestMapping(value = "/ADMIN/edit_logement.do", method = RequestMethod.GET)
	public ModelAndView initSave() throws ServiceException {
		List<Individu> individus = individuService.findAll();
		List<Commune> communes = communeService.findAll();
		List<TypeLogement> typesLogement = typeLogementService.findAll();
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("logement", new Logement());
		data.put("individus", individus);
		data.put("communes", communes);
		data.put("typesLogement", typesLogement);
		data.put("action", "edit_logement.do");
		return new ModelAndView("edit_logement.jsp", data);

	}

	@RequestMapping(value = "/ADMIN/edit_logement.do", method = RequestMethod.POST)
	public ModelAndView save(@Valid Logement logement, BindingResult result)
			throws ServiceException {

		logementValidator.validate(logement, result);
		if (result.hasErrors()) {
			System.out.println(result);
			return initSave();
		}

		ModelAndView modelAndView = new ModelAndView("list_logement.jsp");
		logement = logementService.save(logement);

		System.out.println("after save");
		modelAndView.addObject("logement", logement);
		return listLogement();

	}

	@RequestMapping(value = "/ADMIN/update_logement.do", method = RequestMethod.GET)
	public ModelAndView initUpdate(Integer id) throws ServiceException {
		Logement logement = logementService.findById(id);

		List<Individu> individus = individuService.findAll();
		List<Commune> communes = communeService.findAll();
		List<Quartier> quartiers = quartierService.findAll();
		List<TypeLogement> typesLogement = typeLogementService.findAll();
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("logement", logement);
		data.put("individus", individus);
		data.put("communes", communes);
		data.put("quartiers", quartiers);
		data.put("typesLogement", typesLogement);
		data.put("action", "update_logement.do");
		return new ModelAndView("edit_logement.jsp", data);
	}

	@RequestMapping(value = "/ADMIN/update_logement.do", method = RequestMethod.POST)
	public ModelAndView update(@Valid Logement logement, BindingResult result)
			throws ServiceException {

		logementValidator.validate(logement, result);
		if (result.hasErrors()) {
			System.out.println(result);
			return initUpdate(logement.getId());
		}

		ModelAndView modelAndView = new ModelAndView("list_logement.jsp");

		logementService.update(logement);

		System.out.println("after update");
		modelAndView.addObject("logement", logement);
		return listLogement();

	}

}
