package fr.treeptik.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.TypeLogementDAO;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.TypeLogement;
import fr.treeptik.service.TypeLogementService;

@Service
public class TypeLogementServiceImpl implements TypeLogementService, Serializable {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private TypeLogementDAO typeLogementDAO;

	@Transactional
	@Override
	public TypeLogement save(TypeLogement typelogement) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	@Override
	public TypeLogement update(TypeLogement typelogement)
			throws ServiceException {
		try {
			return typeLogementDAO.save(typelogement);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur update typelogement", e);
		}
	}

	@Transactional
	@Override
	public void remove(TypeLogement typelogement) throws ServiceException {
		try {
			typelogement = this.findByCode(typelogement.getCodeTypeLogement());
			typeLogementDAO.delete(typelogement);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur remove TypeLogement", e);
		}
		
	}

	public TypeLogement findByCode(String code) throws ServiceException {
		try {
			return typeLogementDAO.findByCode(code);
		} catch (DataAccessException e) {
			throw new ServiceException("erreur save TypeLogement", e);
		}
	}

	@Override
	public List<TypeLogement> findAll() throws ServiceException {
		try {
			return typeLogementDAO.findAll();
		} catch (DataAccessException e) {
			throw new ServiceException("erreur findAll TypeLogement", e);
		}
	}


}
