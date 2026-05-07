package com.sp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sp.model.Event;
import com.sp.model.Student;
import com.sp.repository.StudentDao;

@Controller
public class LoginController 
{
	
	 @Autowired
	    private StudentDao studentDAO;
	 
	 @GetMapping("/login")
	    public String showForm(Model model) {
	        model.addAttribute("student", new Student());
	        return "login";
	    }
	 
	 @PostMapping("/login")
	    public String login(@ModelAttribute("Student") Student s, HttpSession session,Model model) 
	 	{
	        Student student= studentDAO.login(s.getEmail(), s.getPassword());
	        if(student != null) 
	        {
	            session.setAttribute("user", student);
	            model.addAttribute("usermail",student.getEmail());
	            model.addAttribute("event", new Event());
	            return "createEvent";
	        }

	        model.addAttribute("msg", "Invalid Credentials");
	        return "error";
	    }
}
