package fr.treeptik.service.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Individu;
import fr.treeptik.model.Logement;
import fr.treeptik.model.Quartier;
import fr.treeptik.model.TypeLogement;
import fr.treeptik.service.IndividuService;
import fr.treeptik.service.LogementService;
import fr.treeptik.service.QuartierService;
import fr.treeptik.service.TypeLogementService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:testApplicationContext.xml")
public class LogementServiceTest {
	@Autowired
	private LogementService logementService;
	@Autowired
	private IndividuService individuService;
	@Autowired
	private QuartierService quartierService;
	@Autowired
	private TypeLogementService typeLogementService;
	List<Logement> logements;
	
	@Test
	public void shouldSaveLogement() throws ServiceException {
		Individu individu = individuService.findById(1);
		TypeLogement typeLogement = typeLogementService.findByCode("e2322322");
		Quartier quartier = quartierService.findById(1);
		
		Logement expectedLogement = new Logement(1,"2","du moulin",75.4,850.5,individu,typeLogement,quartier);
		try {
			Logement logement = logementService.save(new Logement(null,"2","du moulin",75.4,850.5,individu,typeLogement,quartier));
			Assert.assertEquals(expectedLogement, logement);
		} catch (ServiceException e) {
			Assert.fail();
			e.printStackTrace();
		}
	
	}

}
