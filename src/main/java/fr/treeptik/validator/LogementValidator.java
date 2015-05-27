package fr.treeptik.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import fr.treeptik.model.Logement;

@Component
public class LogementValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object logement, Errors arg1) {
		Logement logement2 = (Logement) logement;
		/*if (logement2.getTotalFacture() < 0) {
			errors.rejectValue("totalFacture", "error.TotalFacture",
					"Total facture ne peut être négatif!");
		}*/
	}

}
