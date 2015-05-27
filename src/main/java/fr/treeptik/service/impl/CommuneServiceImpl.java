package fr.treeptik.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.CommuneDAO;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.service.CommuneService;

@Service
public class CommuneServiceImpl implements CommuneService, Serializable {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private CommuneDAO communeDAO;
	
	@Transactional
	@Override
	public Commune save(Commune commune) throws ServiceException {
		try {
			return communeDAO.save(commune);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur save individu", e);
		}
	}

	@Transactional
	@Override
	public Commune update(Commune commune) throws ServiceException {
		try {
			return communeDAO.save(commune);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur update commune", e);
		}
	}

	@Transactional
	@Override
	public void remove(Commune commune) throws ServiceException {
		try {
			commune = this.findById(commune.getId());
			communeDAO.delete(commune);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur remove commune", e);
		}
		
	}

	@Override
	public Commune findById(Integer id) throws ServiceException {
		try {
			return communeDAO.findOne(id);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findById Commune", e);
		}
	}

	@Override
	public List<Commune> findAll() throws ServiceException {
		try {
			return communeDAO.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll commune", e);
		}
	}

}
