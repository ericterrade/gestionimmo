package fr.treeptik.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.treeptik.model.Logement;
import fr.treeptik.model.LogementListDTO;

public interface LogementDAO extends JpaRepository<Logement, Integer> {

	@Query("select new fr.treeptik.model.LogementListDTO(l.id, l.montantLoyer, l.superficie, l.nomRue, l.numRue , q.libelle, i.nom, i.prenom, i.phone, c.nom as nomCommune, c.distance, t.chargesForfaitaires, t.codeTypeLogement) from Logement l "
			+ "JOIN l.quartier q "
			+ "JOIN l.typeLogement t "
			+ "JOIN l.individu i "
			+ "JOIN q.commune c ")
	List<LogementListDTO> findAllData();
	
	
	@Query("select l from Logement l")
	List<Logement> findBySearchRequest();


}
