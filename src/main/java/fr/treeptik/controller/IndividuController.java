package fr.treeptik.controller;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Individu;
import fr.treeptik.model.Logement;
import fr.treeptik.model.LogementListDTO;
import fr.treeptik.service.IndividuService;
import fr.treeptik.validator.IndividuValidator;

@Controller
@RequestMapping("/")
public class IndividuController implements Serializable {

	private static final long serialVersionUID = 1L;
	@Autowired
	private IndividuService individuService;


	@RequestMapping("/ADMIN/list_individu.do")
	public ModelAndView listIndividu() throws ServiceException {
		System.out.println("Logement");
		List<Individu> individus = individuService.findAll();
		
		return new ModelAndView("list_individu.jsp","individus",individus);
	}
	
	@RequestMapping(value = "/ADMIN/edit_individu.do", method = RequestMethod.GET)
	public ModelAndView initSave() throws ServiceException {
		Individu individu = new Individu();
		return new ModelAndView("edit_individu.jsp","individu",individu);


	}
	
	@RequestMapping(value = "/ADMIN/edit_individu.do", method = RequestMethod.POST)
	public ModelAndView save(@Valid Individu individu, BindingResult result) throws ServiceException {

		//logementValidator.validate(logement, result);
		if (result.hasErrors()) {
			return new ModelAndView("edit_individu.jsp", "individu", individu);
		}

		ModelAndView modelAndView = new ModelAndView("list_individu.jsp");

		if (individu.getId() == null) {
			individu = individuService.save(individu);
		}
		else{
			individuService.update(individu);
		}
		System.out.println("after save");
		modelAndView.addObject("individu", individu);
		return listIndividu();

	}
}
