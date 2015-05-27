package fr.treeptik.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.QuartierDAO;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.LogementListDTO;
import fr.treeptik.model.Quartier;
import fr.treeptik.model.QuartierListDTO;
import fr.treeptik.service.QuartierService;

@Service
public class QuartierServiceImpl implements QuartierService, Serializable {

	private static final long serialVersionUID = 1L;
	@Autowired
	private QuartierDAO quartierDAO;

	@Transactional
	@Override
	public Quartier save(Quartier quartier) throws ServiceException {
		try {
			return quartierDAO.save(quartier);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur save quartier", e);
		}
	}

	@Transactional
	@Override
	public Quartier update(Quartier quartier) throws ServiceException {
		try {
			return quartierDAO.save(quartier);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur save quartier", e);
		}
	}

	@Transactional
	@Override
	public void remove(Quartier quartier) throws ServiceException {
		try {
			quartier = this.findById(quartier.getId());
			quartierDAO.delete(quartier);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur remove quartier", e);
		}

	}

	@Override
	public Quartier findById(Integer id) throws ServiceException {
		try {
			return quartierDAO.findOne(id);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findById Quartier", e);
		}
	}

	@Override
	public List<Quartier> findAll() throws ServiceException {
		try {
			return quartierDAO.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll Quartier", e);
		}
	}

	@Override
	public List<QuartierListDTO> findByCommune(Commune commune) throws ServiceException {
		try {
			return quartierDAO.findByCommune(commune);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll Quartier", e);
		}
	}
}
