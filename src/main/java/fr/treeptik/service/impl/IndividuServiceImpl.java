package fr.treeptik.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.IndividuDAO;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Individu;
import fr.treeptik.service.IndividuService;

@Service
public class IndividuServiceImpl implements IndividuService, Serializable {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private IndividuDAO individuDAO;
	
	@Transactional
	@Override
	public Individu save(Individu individu) throws ServiceException {
		try {
			return individuDAO.save(individu);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur save individu", e);
		}
	}
	
	@Transactional
	@Override
	public Individu update(Individu individu) throws ServiceException {
		try {
			return individuDAO.save(individu);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur update individu", e);
		}
	}
	//@Secured("ROLE_ADMIN")
	@Transactional
	@Override
	public void remove(Individu individu) throws ServiceException {
		try {
			individu = this.findById(individu.getId());
			individuDAO.delete(individu);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur remove individu", e);
		}
		
	}
	@Override
	public Individu findById(Integer id) throws ServiceException {
		try {
			return individuDAO.findOne(id);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findById individu", e);
		}
	}
	@Override
	public List<Individu> findAll() throws ServiceException {
		try {
			return individuDAO.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll individu", e);
		}
	}
}
