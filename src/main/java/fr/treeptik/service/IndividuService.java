package fr.treeptik.service;

import java.util.List;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Individu;

public interface IndividuService {

	Individu save(Individu individu) throws ServiceException;
	
	Individu update(Individu individu) throws ServiceException;

	void remove(Individu individu) throws ServiceException;

	Individu findById(Integer id) throws ServiceException;

	List<Individu> findAll() throws ServiceException;
	
	
}
