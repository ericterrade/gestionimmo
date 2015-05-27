package fr.treeptik.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Commune implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer id;
	
	private String nom;
	
	private Long distance;
	
	private Long nbHabitants;
	@OneToMany(mappedBy = "commune")
	private List<Quartier> quartiers;
	
	public Commune() {
		
	}

	public Commune(Integer id, String nom, Long distance, Long nbHabitants,
			List<Quartier> quartiers) {
		super();
		this.id = id;
		this.nom = nom;
		this.distance = distance;
		this.nbHabitants = nbHabitants;
		this.quartiers = quartiers;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Long getDistance() {
		return distance;
	}

	public void setDistance(Long distance) {
		this.distance = distance;
	}

	public Long getNbHabitants() {
		return nbHabitants;
	}

	public void setNbHabitants(Long nbHabitants) {
		this.nbHabitants = nbHabitants;
	}

	public List<Quartier> getQuartiers() {
		return quartiers;
	}

	public void setQuartiers(List<Quartier> quartiers) {
		this.quartiers = quartiers;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((distance == null) ? 0 : distance.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((nbHabitants == null) ? 0 : nbHabitants.hashCode());
		result = prime * result + ((nom == null) ? 0 : nom.hashCode());
		result = prime * result
				+ ((quartiers == null) ? 0 : quartiers.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Commune other = (Commune) obj;
		if (distance == null) {
			if (other.distance != null)
				return false;
		} else if (!distance.equals(other.distance))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (nbHabitants == null) {
			if (other.nbHabitants != null)
				return false;
		} else if (!nbHabitants.equals(other.nbHabitants))
			return false;
		if (nom == null) {
			if (other.nom != null)
				return false;
		} else if (!nom.equals(other.nom))
			return false;
		if (quartiers == null) {
			if (other.quartiers != null)
				return false;
		} else if (!quartiers.equals(other.quartiers))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Commune [id=" + id + ", nom=" + nom + ", distance=" + distance
				+ ", nbHabitants=" + nbHabitants + ", quartiers=" + quartiers
				+ "]";
	}

	
}
