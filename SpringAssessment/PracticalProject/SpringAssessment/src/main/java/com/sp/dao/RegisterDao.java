package com.sp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.sp.model.Student;

public class RegisterDao 
{
	JdbcTemplate jt;

	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}
	
	 public void register(Student s) 
	 	{

	        String sql ="insert into student(name,email,password) values(?,?,?)";
	        jt.update(sql,s.getName(),s.getEmail(),s.getPassword());
	    }
	 
	 public Student login(String email, String password) {

	        String sql =
	        "select * from student where email=? and password=?";

	        List<Student> list = jt.query(
	                sql,
	                new Object[]{email,password},

	                new RowMapper<Student>() {

	                    @Override
	                    public Student mapRow(ResultSet rs, int rowNum) throws SQLException {

	                        Student s = new Student();
	                        s.setId(rs.getInt("id"));
	                        s.setName(rs.getString("name"));
	                        s.setEmail(rs.getString("email"));

	                        return s;
	                    }
	                });

	        return list.isEmpty() ? null : list.get(0);
	    }
		 
}
