package com.sp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.dao.RegisterDao;
import com.sp.model.Student;

@Controller
public class RegistrationController 
{
	@Autowired
	RegisterDao rd;
	
	@RequestMapping("/Register")
	public String registerPage(Model model) 
	{

	    model.addAttribute("student", new Student());

	    return "Register";
	}
	
	@RequestMapping("/login")
	public String loginPage(Model model) 
	{

	    model.addAttribute("student", new Student());

	    return "login";
	}
	
	@RequestMapping(value="/register" ,method = RequestMethod.POST)
	public String register(@ModelAttribute  Student s,Model model) 
	{
		rd.register(s);
	    model.addAttribute("msg", "Registration Successful");
	    return "redirect:/login";
	}
	
	
	 @PostMapping("/login")
	    public String login(@ModelAttribute("Student") Student s, HttpSession session,Model model) 
	 	{
	        Student student= rd.login(s.getEmail(), s.getPassword());
	        if(student != null) 
	        {
	            session.setAttribute("user", student);
	            model.addAttribute("usermail",student.getEmail());
	            return "dashboard";
	        }

	        model.addAttribute("msg", "Invalid Credentials");

	        return "error";
	    }
	 
	 @ExceptionHandler(Exception.class)
	 public String handleException(Exception ex, Model model) {
	     model.addAttribute("msg", "Something went wrong: " + ex.getMessage());
	     return "error";
	 }
	 
	 @GetMapping("/logout")
	 public String logout(HttpSession session) {

	     session.invalidate();

	     return "redirect:/login";
	 }
	

}
