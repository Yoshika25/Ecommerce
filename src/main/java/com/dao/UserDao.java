package com.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.controller.entity.User;

public class UserDao {

	@Autowired
	JdbcTemplate temp;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.temp = jdbcTemplate;
	}

	public int save(User user) {

		String sql = "INSERT INTO sportyshoes_user VALUES(?,?,?)";

		try {

			int counter = temp.update(sql, new Object[] { user.getId(), user.getEmail(), user.getPassword() });

			return counter;

		} catch (Exception e) {

			e.printStackTrace();
			return 0;
		}
	}

	public String loginUser(User user) {

		String sql = "SELECT email FROM sportyshoes_user WHERE email=? AND password=?";

		try {

			String userId =temp.queryForObject(sql, new Object[] { user.getEmail(), user.getPassword() },
					String.class);

			return userId;

		} catch (Exception e) {
			
			return null;
		}
	}
}
