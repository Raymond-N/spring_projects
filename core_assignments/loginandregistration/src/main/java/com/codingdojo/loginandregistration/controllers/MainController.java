package com.codingdojo.loginandregistration.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.loginandregistration.models.LoginUser;
import com.codingdojo.loginandregistration.models.User;
import com.codingdojo.loginandregistration.services.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	//App not working at this point.
	//Need to add methods to controller to connect to jsp
	
	//1st step: work on services and repositories
	@GetMapping("/")
	public String index(Model model) {
		
		model.addAttribute("newUser", new User());
		model.addAttribute("newLoginUser", new LoginUser());
		return "login.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		// TO-DO Later -- call a register method in the service 
        // to do some extra validations and create a new user!
		userService.register(newUser, result);
		
		if(result.hasErrors()) {
	         // Be sure to send in the empty LoginUser before 
	         // re-rendering the page.
	         model.addAttribute("newLoginUser", new LoginUser());
	         return "login.jsp";
	     }
		
		session.setAttribute("userId", newUser.getId());
		 
	     return "redirect:/welcome";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLoginUser") LoginUser newLoginUser, BindingResult result, Model model, HttpSession session) {
		User user = userService.login(newLoginUser, result);
		
		if(result.hasErrors()) {
	         model.addAttribute("newUser", new User());
	         return "login.jsp";
	     }
		
		 session.setAttribute("userId", user.getId());
		 
		 return "redirect:/welcome";
	}
	
	@GetMapping("/welcome")
	public String welcome(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if(userId == null) {
			return "redirect:/";
		}
		User user = userService.findUser(userId);
		model.addAttribute("user", user);
		return "dashboard.jsp";
	}
	
	@GetMapping("/logout")
	 public String logout(HttpSession session) {
		 session.setAttribute("userId", null);
		 return "redirect:/";
	 }

}
