package com.codingdojo.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
	@RequestMapping("/omikuji")
	public String omikuji() {
		return "omikujiform.jsp";
	}
	
	@RequestMapping(value="/send", method=RequestMethod.POST)
	public String send(
			@RequestParam(value="years") int years,
	    	@RequestParam(value="city") String city,
	    	@RequestParam(value="person") String person,
	    	@RequestParam(value="hobby") String hobby,
	    	@RequestParam(value="thing") String thing,
	    	@RequestParam(value="nice") String nice,
	    	HttpSession session
	    	) {
		session.setAttribute("years", years);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/omikuji/show")
	public String showMessage(HttpSession session, Model model) {
		Integer num = (Integer) session.getAttribute("years");
		String location = (String) session.getAttribute("city");
		String human = (String) session.getAttribute("person");
		String endeavor = (String) session.getAttribute("hobby");
		String living = (String) session.getAttribute("thing");
		String message = (String) session.getAttribute("nice");
		
		model.addAttribute("num", num);
		model.addAttribute("location", location);
		model.addAttribute("human", human);
		model.addAttribute("endeavor", endeavor);
		model.addAttribute("living", living);
		model.addAttribute("message", message);
		
		return "showomikuji.jsp";
	}

}
