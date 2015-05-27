package fr.treeptik.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.LogementDAO;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Logement;
import fr.treeptik.model.LogementListDTO;
import fr.treeptik.service.LogementService;

@Service
public class LogementServiceImpl implements LogementService, Serializable {

	private static final long serialVersionUID = 1L;
	@Autowired
	private LogementDAO logementDAO;

	@Transactional
	@Override
	public Logement save(Logement logement) throws ServiceException {
		try {
			return logementDAO.save(logement);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur save logement", e);
		}
	}
	
	@Transactional
	@Override
	public Logement update(Logement logement) throws ServiceException {
		try {
			return logementDAO.save(logement);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur update logement", e);
		}
	}

	@Transactional
	@Override
	public void remove(Logement logement) throws ServiceException {
		try {
			logement = this.findById(logement.getId());
			logementDAO.delete(logement);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur remove logement", e);
		}
	}

	@Override
	public Logement findById(Integer id) throws ServiceException {
		try {
			return logementDAO.findOne(id);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findById logement", e);
		}
	}

	@Override
	public List<Logement> findAll() throws ServiceException {
		try {
			return logementDAO.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll logement", e);
		}
	}
	
	
	public List<LogementListDTO> findAllData() throws ServiceException{
		try {
			return logementDAO.findAllData();
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll logement", e);
		}
		
		
	}
}
