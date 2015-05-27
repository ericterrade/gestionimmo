package fr.treeptik.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Logement implements Serializable {

	@Id
	@GeneratedValue
	private Integer id;
	@NotBlank
	@NotNull
	private String numRue;
	@NotBlank
	@NotNull
	private String nomRue;

	private double superficie;

	private double montantLoyer;
	@ManyToOne
	private Individu individu;
	@ManyToOne
	private TypeLogement typeLogement;
	@ManyToOne
	private Quartier quartier;

	private static final long serialVersionUID = 1L;

	public Logement() {

	}

	public Logement(Integer id, String numRue, String nomRue,
			double superficie, double montantLoyer, Individu individu,
			TypeLogement typeLogement, Quartier quartier) {
		super();
		this.id = id;
		this.numRue = numRue;
		this.nomRue = nomRue;
		this.superficie = superficie;
		this.montantLoyer = montantLoyer;
		this.individu = individu;
		this.typeLogement = typeLogement;
		this.quartier = quartier;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumRue() {
		return numRue;
	}

	public void setNumRue(String numRue) {
		this.numRue = numRue;
	}

	public String getNomRue() {
		return nomRue;
	}

	public void setNomRue(String nomRue) {
		this.nomRue = nomRue;
	}

	public double getSuperficie() {
		return superficie;
	}

	public void setSuperficie(double superficie) {
		this.superficie = superficie;
	}

	public double getMontantLoyer() {
		return montantLoyer;
	}

	public void setMontantLoyer(double montantLoyer) {
		this.montantLoyer = montantLoyer;
	}

	public Individu getIndividu() {
		return individu;
	}

	public void setIndividu(Individu individu) {
		this.individu = individu;
	}

	public Quartier getQuartier() {
		return quartier;
	}

	public void setQuartier(Quartier quartier) {
		this.quartier = quartier;
	}

	public TypeLogement getTypeLogement() {
		return typeLogement;
	}

	public void setTypeLogement(TypeLogement typeLogement) {
		this.typeLogement = typeLogement;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((individu == null) ? 0 : individu.hashCode());
		long temp;
		temp = Double.doubleToLongBits(montantLoyer);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((nomRue == null) ? 0 : nomRue.hashCode());
		result = prime * result + ((numRue == null) ? 0 : numRue.hashCode());
		result = prime * result
				+ ((quartier == null) ? 0 : quartier.hashCode());
		temp = Double.doubleToLongBits(superficie);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result
				+ ((typeLogement == null) ? 0 : typeLogement.hashCode());
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
		Logement other = (Logement) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (individu == null) {
			if (other.individu != null)
				return false;
		} else if (!individu.equals(other.individu))
			return false;
		if (Double.doubleToLongBits(montantLoyer) != Double
				.doubleToLongBits(other.montantLoyer))
			return false;
		if (nomRue == null) {
			if (other.nomRue != null)
				return false;
		} else if (!nomRue.equals(other.nomRue))
			return false;
		if (numRue == null) {
			if (other.numRue != null)
				return false;
		} else if (!numRue.equals(other.numRue))
			return false;
		if (quartier == null) {
			if (other.quartier != null)
				return false;
		} else if (!quartier.equals(other.quartier))
			return false;
		if (Double.doubleToLongBits(superficie) != Double
				.doubleToLongBits(other.superficie))
			return false;
		if (typeLogement == null) {
			if (other.typeLogement != null)
				return false;
		} else if (!typeLogement.equals(other.typeLogement))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Logement [id=" + id + ", numRue=" + numRue + ", nomRue="
				+ nomRue + ", superficie=" + superficie + ", montantLoyer="
				+ montantLoyer + ", individu=" + individu + ", typeLogement="
				+ typeLogement + ", quartier=" + quartier + "]";
	}

	

}
