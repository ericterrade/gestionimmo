package fr.treeptik.service.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.Logement;
import fr.treeptik.model.Quartier;
import fr.treeptik.service.QuartierService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:testApplicationContext.xml")
public class QuartierServiceTest {
	@Autowired
	private QuartierService quartierService;
	
	private List<Logement> logements;
	private List<Quartier> quartiers;
	@Test
	public void shouldSaveQuartier() throws ServiceException {
		Commune commune = new Commune(1, "Saint-Maximin la Sainte Baume", (long)(100.00), (long)(200000), quartiers);
		
		Quartier expectedQuartier = new Quartier(2, "Du moulin",logements,commune);
		try {
			Quartier quartier = quartierService.save(new Quartier(null, "Du moulin",logements,commune));
			Assert.assertEquals(expectedQuartier, quartier);
		} catch (ServiceException e) {
			Assert.fail();
			e.printStackTrace();
		}
	
	}
}
