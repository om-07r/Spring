package com.sp.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.sp.model.Student;

@Repository
public class StudentDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void register(Student s)
    {
        String sql = "INSERT INTO student(name, email, password) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, s.getName(), s.getEmail(), s.getPassword());
    }
    
    public Student login(String email, String password) {

        String sql =
        "select * from student where email=? and password=?";

        List<Student> list = jdbcTemplate.query(
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