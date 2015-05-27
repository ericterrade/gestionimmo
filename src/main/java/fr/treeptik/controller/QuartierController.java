package fr.treeptik.controller;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.QuartierListDTO;
import fr.treeptik.service.CommuneService;
import fr.treeptik.service.QuartierService;

@Controller
//@RestController toutes les methodes seront ResponseBody
public class QuartierController implements Serializable{

	private static final long serialVersionUID = 1L;
	@Autowired
	private CommuneService communeService;
	@Autowired
	private QuartierService quartierService;
	
	@RequestMapping(value="/ADMIN/quartier.do", method=RequestMethod.GET)
	public @ResponseBody List<QuartierListDTO> listQuartier(HttpServletRequest request, HttpServletResponse response) throws ServiceException{
		String id = request.getParameter("id");
		System.out.println(id);
		Commune commune = communeService.findById(Integer.parseInt(id));
		List<QuartierListDTO> quartiers = quartierService.findByCommune(commune);
		return quartiers;
	}

}
     
