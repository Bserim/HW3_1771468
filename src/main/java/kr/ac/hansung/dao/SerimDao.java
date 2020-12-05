package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Serim;

@Repository
public class SerimDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {

		String sqlStatement = "select count(*) from serim";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}

	// query and return multiple objects
	// cRud
	public List<Serim> getSerims() {
		String sqlStatement = "select * from serim";
		return jdbcTemplate.query(sqlStatement, new RowMapper<Serim>() {

			@Override
			public Serim mapRow(ResultSet rs, int rowNum) throws SQLException {

				Serim serim = new Serim();
				serim.setYear(rs.getString("year"));
				serim.setSemester(rs.getString("semester"));
				serim.setSubject(rs.getString("subject"));
				serim.setDivision(rs.getString("division"));
				serim.setProfessor(rs.getString("professor"));
				serim.setCredit(rs.getString("credit"));

				return serim;
			}

		});
	}

}
