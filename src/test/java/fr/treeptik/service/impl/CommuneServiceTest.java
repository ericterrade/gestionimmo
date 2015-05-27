package fr.treeptik.service.impl;

import java.util.Date;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Commune;
import fr.treeptik.model.Quartier;
import fr.treeptik.service.CommuneService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:testApplicationContext.xml")
public class CommuneServiceTest {
	@Autowired
	private CommuneService communeService;
	
	private List<Quartier> quartiers;
	@Test
	public void shouldSaveCommune() {
		
		Commune expectedCommune = new Commune(2, "Aix en Provence", (long)(100.00), (long)(200000), quartiers);
		try {
			Commune commune = communeService.save(new Commune(null, "Aix en Provence", (long)(100.00), (long)(200000), quartiers));
			Assert.assertEquals(expectedCommune, commune);
		} catch (ServiceException e) {
			Assert.fail();
			e.printStackTrace();
		}
	}
}
