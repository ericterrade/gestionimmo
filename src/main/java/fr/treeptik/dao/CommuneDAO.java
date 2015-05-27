package fr.treeptik.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.treeptik.model.Commune;

public interface CommuneDAO  extends JpaRepository<Commune, Integer>{

}
