package fr.treeptik.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.treeptik.model.TypeLogement;

public interface TypeLogementDAO  extends JpaRepository<TypeLogement, Integer>{
	@Query("select tl from TypeLogement tl where tl.codeTypeLogement like ?1")
	TypeLogement findByCode(String code);
}
