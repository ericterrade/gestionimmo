package fr.treeptik.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class TypeLogement {

	@Id
	private String codeTypeLogement;
	
	private double chargesForfaitaires;
	
	@OneToMany (mappedBy = "typeLogement")
	private List<Logement> logements;
	
	public TypeLogement() {
		// TODO Auto-generated constructor stub
	}

	public TypeLogement(String codeTypeLogement, double chargesForfaitaires,
			List<Logement> logements) {
		super();
		this.codeTypeLogement = codeTypeLogement;
		this.chargesForfaitaires = chargesForfaitaires;
		this.logements = logements;
	}

	public String getCodeTypeLogement() {
		return codeTypeLogement;
	}

	public void setCodeTypeLogement(String codeTypeLogement) {
		this.codeTypeLogement = codeTypeLogement;
	}

	public double getChargesForfaitaires() {
		return chargesForfaitaires;
	}

	public void setChargesForfaitaires(double chargesForfaitaires) {
		this.chargesForfaitaires = chargesForfaitaires;
	}

	public List<Logement> getLogements() {
		return logements;
	}

	public void setLogements(List<Logement> logements) {
		this.logements = logements;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(chargesForfaitaires);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime
				* result
				+ ((codeTypeLogement == null) ? 0 : codeTypeLogement.hashCode());
		result = prime * result
				+ ((logements == null) ? 0 : logements.hashCode());
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
		TypeLogement other = (TypeLogement) obj;
		if (Double.doubleToLongBits(chargesForfaitaires) != Double
				.doubleToLongBits(other.chargesForfaitaires))
			return false;
		if (codeTypeLogement == null) {
			if (other.codeTypeLogement != null)
				return false;
		} else if (!codeTypeLogement.equals(other.codeTypeLogement))
			return false;
		if (logements == null) {
			if (other.logements != null)
				return false;
		} else if (!logements.equals(other.logements))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "TypeLogement [codeTypeLogement=" + codeTypeLogement
				+ ", chargesForfaitaires=" + chargesForfaitaires
				+ ", logements=" + logements + "]";
	}
	
	
}
