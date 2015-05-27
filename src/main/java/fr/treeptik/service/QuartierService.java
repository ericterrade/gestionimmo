package fr.treeptik.service;

import java.util.List;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.LogementListDTO;
import fr.treeptik.model.Quartier;
import fr.treeptik.model.QuartierListDTO;

public interface QuartierService {
	
	Quartier save(Quartier quartier) throws ServiceException;

	Quartier update(Quartier quartier) throws ServiceException;

	void remove(Quartier quartier) throws ServiceException;

	Quartier findById(Integer id) throws ServiceException;

	List<Quartier> findAll() throws ServiceException;

	List<QuartierListDTO> findByCommune(Commune commune) throws ServiceException;
}
