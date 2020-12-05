package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Registration;

@Repository
public class RegistrationDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public int getRowCount() {
		
		String sqlStatement="select count(*) from registration";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}
		
	//query and return multiple objects
	//cRud
	public List<Registration> getRegistration() {
		String sqlStatement="select * from registration";
		return jdbcTemplate.query(sqlStatement, new RowMapper<Registration>() {

			@Override
			public Registration mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Registration registration = new Registration();
				registration.setYear(rs.getString("year"));
				registration.setSemester(rs.getString("semester"));
				registration.setSubject(rs.getString("subject"));
				registration.setDivision(rs.getString("division"));
				registration.setProfessor(rs.getString("professor"));
				registration.setCredit(rs.getString("credit"));

				
				return registration;
			}
				
	});
		
	}
	
	//Crud method
	public boolean insert(Registration registration) {
			
		String year=registration.getYear();
		String semester=registration.getSemester();
		String subject=registration.getSubject();
		String division=registration.getDivision();
		String professor=registration.getProfessor();
		String credit=registration.getCredit();
		
		
		String sqlStatement="insert into registration (year, semester, subject, division, professor, credit) values (?,?,?,?,?,?)";
		
		return (jdbcTemplate.update(sqlStatement, new Object [] {year, semester, subject, division, professor, credit})==1);
		
	}
	
}
