package fr.treeptik.service;

import java.util.List;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;

public interface CommuneService {
	Commune save(Commune commune) throws ServiceException;

	Commune update(Commune commune) throws ServiceException;

	void remove(Commune commune) throws ServiceException;

	Commune findById(Integer id) throws ServiceException;

	List<Commune> findAll() throws ServiceException;
}
