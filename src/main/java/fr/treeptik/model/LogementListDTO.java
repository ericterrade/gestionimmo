package fr.treeptik.model;

public class LogementListDTO {
//l.id, l.montantLoyer, l.superficie, l.nomRue, l.numRue , q.libelle, i.nom, i.prenom, i.phone, c.nom, c.distance, t.chargesForfaitaires, t.codeTypeLogement
	private Integer id;
	private Double montantLoyer;
	private Double superficie;
	private String nomRue;
	private String numRue;
	private String libelle;
	private String nom;
	private String prenom;
	private String phone;
	private String nomCommune;
	private Long distance;
	private Double chargesForfaitaires;
	private String codeTypeLogement;
	
	public LogementListDTO() {
		
	}

	public LogementListDTO(Integer id, Double montantLoyer, Double superficie,
			String nomRue, String numRue, String libelle, String nom,
			String prenom, String phone, String nomCommune, Long distance,
			Double chargesForfaitaires, String codeTypeLogement) {
		super();
		this.id=id;
		this.montantLoyer = montantLoyer;
		this.superficie = superficie;
		this.nomRue = nomRue;
		this.numRue = numRue;
		this.libelle = libelle;
		this.nom = nom;
		this.prenom = prenom;
		this.phone = phone;
		this.nomCommune = nomCommune;
		this.distance = distance;
		this.chargesForfaitaires = chargesForfaitaires;
		this.codeTypeLogement = codeTypeLogement;
	}
	
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getMontantLoyer() {
		return montantLoyer;
	}

	public void setMontantLoyer(Double montantLoyer) {
		this.montantLoyer = montantLoyer;
	}

	public Double getSuperficie() {
		return superficie;
	}

	public void setSuperficie(Double superficie) {
		this.superficie = superficie;
	}

	public String getNomRue() {
		return nomRue;
	}

	public void setNomRue(String nomRue) {
		this.nomRue = nomRue;
	}

	public String getNumRue() {
		return numRue;
	}

	public void setNumRue(String numRue) {
		this.numRue = numRue;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNomCommune() {
		return nomCommune;
	}

	public void setNomCommune(String nomCommune) {
		this.nomCommune = nomCommune;
	}

	public Long getDistance() {
		return distance;
	}

	public void setDistance(Long distance) {
		this.distance = distance;
	}

	public Double getChargesForfaitaires() {
		return chargesForfaitaires;
	}

	public void setChargesForfaitaires(Double chargesForfaitaires) {
		this.chargesForfaitaires = chargesForfaitaires;
	}

	public String getCodeTypeLogement() {
		return codeTypeLogement;
	}

	public void setCodeTypeLogement(String codeTypeLogement) {
		this.codeTypeLogement = codeTypeLogement;
	}

	@Override
	public String toString() {
		return "LogementListDTO [montantLoyer=" + montantLoyer
				+ ", superficie=" + superficie + ", nomRue=" + nomRue
				+ ", numRue=" + numRue + ", libelle=" + libelle + ", nom="
				+ nom + ", prenom=" + prenom + ", phone=" + phone
				+ ", nomCommune=" + nomCommune + ", distance=" + distance
				+ ", chargesForfaitaires=" + chargesForfaitaires
				+ ", codeTypeLogement=" + codeTypeLogement + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((chargesForfaitaires == null) ? 0 : chargesForfaitaires
						.hashCode());
		result = prime
				* result
				+ ((codeTypeLogement == null) ? 0 : codeTypeLogement.hashCode());
		result = prime * result
				+ ((distance == null) ? 0 : distance.hashCode());
		result = prime * result + ((libelle == null) ? 0 : libelle.hashCode());
		result = prime * result
				+ ((montantLoyer == null) ? 0 : montantLoyer.hashCode());
		result = prime * result + ((nom == null) ? 0 : nom.hashCode());
		result = prime * result
				+ ((nomCommune == null) ? 0 : nomCommune.hashCode());
		result = prime * result + ((nomRue == null) ? 0 : nomRue.hashCode());
		result = prime * result + ((numRue == null) ? 0 : numRue.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + ((prenom == null) ? 0 : prenom.hashCode());
		result = prime * result
				+ ((superficie == null) ? 0 : superficie.hashCode());
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
		LogementListDTO other = (LogementListDTO) obj;
		if (chargesForfaitaires == null) {
			if (other.chargesForfaitaires != null)
				return false;
		} else if (!chargesForfaitaires.equals(other.chargesForfaitaires))
			return false;
		if (codeTypeLogement == null) {
			if (other.codeTypeLogement != null)
				return false;
		} else if (!codeTypeLogement.equals(other.codeTypeLogement))
			return false;
		if (distance == null) {
			if (other.distance != null)
				return false;
		} else if (!distance.equals(other.distance))
			return false;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		if (montantLoyer == null) {
			if (other.montantLoyer != null)
				return false;
		} else if (!montantLoyer.equals(other.montantLoyer))
			return false;
		if (nom == null) {
			if (other.nom != null)
				return false;
		} else if (!nom.equals(other.nom))
			return false;
		if (nomCommune == null) {
			if (other.nomCommune != null)
				return false;
		} else if (!nomCommune.equals(other.nomCommune))
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
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (prenom == null) {
			if (other.prenom != null)
				return false;
		} else if (!prenom.equals(other.prenom))
			return false;
		if (superficie == null) {
			if (other.superficie != null)
				return false;
		} else if (!superficie.equals(other.superficie))
			return false;
		return true;
	}

	

	
	
	
	
	
	
	
}
