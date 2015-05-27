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
import fr.treeptik.model.Individu;
import fr.treeptik.model.Logement;
import fr.treeptik.service.IndividuService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:testApplicationContext.xml")
public class IndividuServiceTest {
	@Autowired
	private IndividuService individuService;
	
	private List<Logement> logements;

	@Test
	public void shouldSaveIndividu() {
		
		Individu expectedIndividu = new Individu(1,"DUPONT", "Paul",new Date(),"+336454545",logements);
		try {
			Individu individu = individuService.save(new Individu(null,"DUPONT", "Paul",new Date(),"+336454545",logements));
			Assert.assertEquals(expectedIndividu, individu);
		} catch (ServiceException e) {
			Assert.fail();
			e.printStackTrace();
		}
	}
}
