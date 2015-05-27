package fr.treeptik.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.treeptik.model.Commune;
import fr.treeptik.model.Quartier;
import fr.treeptik.model.QuartierListDTO;


public interface QuartierDAO   extends JpaRepository<Quartier, Integer>{

	@Query("select new fr.treeptik.model.QuartierListDTO(q.id, q.libelle)  from Quartier q where q.commune=?1")
	List<QuartierListDTO> findByCommune(Commune commune);

}
