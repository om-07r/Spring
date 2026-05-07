package com.sp.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.sp.model.Event;
import com.sp.model.Student;
import com.sp.repository.EventDao;
import java.time.LocalDate;

@Controller
public class EventController {

    @Autowired
    private EventDao eventDAO;

    @GetMapping("/create-event")
    public String showEventPage(HttpSession session, Model model) {

    
        Student student = (Student) session.getAttribute("user");
        if (student == null) {
            return "redirect:/login";
        }

        model.addAttribute("event", new Event());
        return "createEvent";
    }
    
    @GetMapping("/eventList")
    public String listEvents(Model model) {
        model.addAttribute("events", eventDAO.getAllEvents());
        return "eventList";
    }
    

    @PostMapping("/create-event")
    public String createEvent(@ModelAttribute("event") Event event,
                              HttpSession session,
                              Model model) {

        Student student = (Student) session.getAttribute("user");
        if (student == null) {
            return "redirect:/login";
        }

        model.addAttribute("event", event);

        if (event.getTitle() == null || event.getTitle().trim().isEmpty()) {
            model.addAttribute("error", "Title cannot be empty!");
            return "createEvent";
        }
        if (event.getEventDate() == null || event.getEventDate().isEmpty()) {
            model.addAttribute("error", "Event date is required!");
            return "createEvent";
        }

        LocalDate enteredDate = LocalDate.parse(event.getEventDate());

        if (enteredDate.isBefore(LocalDate.now())) {
            model.addAttribute("error", "Event date must be today or future!");
            return "createEvent";
        }

        // Save event
        eventDAO.saveEvent(event, student.getId());

        return "redirect:/eventList";
    }

   
}