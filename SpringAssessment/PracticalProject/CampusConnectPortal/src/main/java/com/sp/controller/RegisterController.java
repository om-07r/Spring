package com.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sp.model.Student;
import com.sp.repository.StudentDao;

@Controller
public class RegisterController {

	 @Autowired
	    private StudentDao studentDAO;

    @GetMapping("/register")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute Student student) {
        studentDAO.register(student);
        return "redirect:/login";
    }
}