package com.sp.repository;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.sp.model.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EventDao {

    @Autowired
    private JdbcTemplate jt;

    // Save event — now uses student ID instead of email
    public void saveEvent(Event e, int studentId) 
    {
        String sql = "INSERT INTO events (title, description, event_date, created_by) VALUES (?,?,?,?)";
        jt.update(sql, e.getTitle(), e.getDescription(), e.getEventDate(), studentId);
    }

    
    public List<Event> getAllEvents() 
    {
        String sql = "SELECT e.id, e.title, e.description, e.event_date, " +
                     "e.created_by, s.name AS creator_name " +
                     "FROM events e " +
                     "LEFT JOIN student s ON e.created_by = s.id " +
                     "ORDER BY e.event_date ASC";

        return jt.query(sql, (rs, rowNum) -> {
            Event ev = new Event();
            ev.setId(rs.getInt("id"));
            ev.setTitle(rs.getString("title"));
            ev.setDescription(rs.getString("description"));
            ev.setEventDate(rs.getString("event_date"));
            ev.setCreatedBy(rs.getInt("created_by"));
            ev.setCreatorName(rs.getString("creator_name")); // ← from JOIN
            return ev;
        });
    }
}
