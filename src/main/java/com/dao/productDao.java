package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.controller.entity.Products;


public class productDao {

	@Autowired
	JdbcTemplate temp;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.temp = jdbcTemplate;
	}
	
	public List<Products> getProductList(){
		
		return temp.query("select * from sportyshoes_product",new RowMapper<Products>(){    
	        public Products mapRow(ResultSet rs, int row) throws SQLException {    
	            Products product=new Products();    
	            product.setId(rs.getInt(1));    
	            product.setName(rs.getString(2));    
	            product.setPrice(rs.getString(3));    
	            product.setImg(rs.getString(4));           
	            return product;    
	        }    
	    });    
	}

}
