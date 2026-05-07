package com.sp.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Event {
    private int id;
    private String title;
    private String description;
    private String eventDate;
    private int createdBy;        
    private String creatorName;   

    
    public int getId() 
    {
    	return id; 
    }
    public void setId(int id) 
    {
    	this.id = id; 
    }

    public String getTitle() 
    {
    	return title; 
    }
    public void setTitle(String title) 
    {
    	this.title = title; 
    }

    public String getDescription() 
    {
    	return description; 
    }
    public void setDescription(String description)
    {
    	this.description = description; 
    }

   

    public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public int getCreatedBy() 
    {
    	return createdBy;
    }
    public void setCreatedBy(int createdBy) 
    {
    	this.createdBy = createdBy; 
    }

    public String getCreatorName() 
    {
    	return creatorName;
    }
    public void setCreatorName(String creatorName) 
    {
    	this.creatorName = creatorName; 
    }
}

