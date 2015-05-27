package fr.treeptik.mapping;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import javax.sql.DataSource;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.MappingSqlQuery;

import fr.treeptik.model.Logement;

public class LogementMappingQuery extends MappingSqlQuery<Logement> {

	
	public LogementMappingQuery(DataSource ds) {
		super(ds, "select id, first_name, last_name from t_actor where id = ?");
		super.declareParameter(new SqlParameter("id", Types.INTEGER));
		compile();
		}
	@Override
	protected Logement mapRow(ResultSet rs, int arg1) throws SQLException {
		Logement logement = new Logement();
//		actor.setId(rs.getLong("id"));
//		actor.setFirstName(rs.getString("first_name"));
//		actor.setLastName(rs.getString("last_name"));
		return null;
	}
	
	
	

}
