package fr.treeptik.service;

import java.util.List;

import org.springframework.validation.BindingResult;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Logement;
import fr.treeptik.model.LogementListDTO;

public interface LogementService {
	
	Logement save(Logement logement) throws ServiceException;

	Logement update(Logement logement) throws ServiceException;

	void remove(Logement logement) throws ServiceException;

	Logement findById(Integer id) throws ServiceException;

	List<Logement> findAll() throws ServiceException;
	
	List<LogementListDTO> findAllData() throws ServiceException;

}
