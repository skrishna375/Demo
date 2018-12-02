package com.demo.jenkins;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {

	 @RequestMapping("/")
	 public String index(){
		 return "index";
	 }
	
	 @RequestMapping(value="/login",method = RequestMethod.GET)
	 public String loginPage(){
		 return "login";
	 }
	 
	 @RequestMapping(value="/login",method = RequestMethod.POST)
	 public String welcomePage(ModelMap model, @RequestParam String username, @RequestParam String password){
		 
		 if(!(username.equalsIgnoreCase("krishna") && password.equalsIgnoreCase("krishna"))){
			 model.put("errorMessage","Invalid credentials");
			 return "login";
		 }
		 model.put("name", username);
	     model.put("password", password);
		 return "greeting";
		 
	 }
	 
	 @RequestMapping("/register")
	 public String registerPage(){
		 return "register";
	 }
	 
	  @RequestMapping("/greeting")
	    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "greeting";
	    }
}
