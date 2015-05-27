package fr.treeptik.controller;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;



import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.LogementListDTO;
import fr.treeptik.service.CommuneService;
import fr.treeptik.service.QuartierService;

@Controller
public class CommuneController implements Serializable{

	private static final long serialVersionUID = 1L;
	@Autowired
	private CommuneService communeService;
	@Autowired
	private QuartierService quartierService;
	
	@RequestMapping("/ADMIN/list_commune.do")
	public ModelAndView listCommune() throws ServiceException {
		System.out.println("Commune");
		List<Commune> communes = communeService.findAll();
		
		return new ModelAndView("list_commune.jsp","communes",communes);
	}
	
		
}
