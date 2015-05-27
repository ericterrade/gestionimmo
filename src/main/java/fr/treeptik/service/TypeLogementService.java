package fr.treeptik.service;

import java.util.List;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.TypeLogement;

public interface TypeLogementService {
	TypeLogement save(TypeLogement typelogement);

	TypeLogement update(TypeLogement typelogement) throws ServiceException;

	void remove(TypeLogement typelogement) throws ServiceException;

	List<TypeLogement> findAll() throws ServiceException;

	TypeLogement findByCode(String code) throws ServiceException;
}
