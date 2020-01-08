package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.service.movieService;

@Controller
@ResponseBody
public class movieController {
	
	
	@Autowired
	movieService service;
	
	
	
	@GetMapping("/")
	public ModelAndView myFn(){
		ModelAndView model=new ModelAndView();
		model.setViewName("File1");
		model.addObject("sri","Hello");
		return model;
	} 
	
	 @GetMapping("/SignUp")
	public ModelAndView adminSignUp(Admin ad){
		ModelAndView model=new ModelAndView();
		model.setViewName("SignUp");
		model.addObject("signUp");
		service.adminSignUp(ad);
		return model; 
		}
	
	

	@PostMapping("/SignUp")
		public ModelAndView signUpStatus(Admin ad){
		System.out.println(ad);
		ModelAndView m=new ModelAndView();
	    if(service.adminSignUp(ad)) {
	    	m.setViewName("Welcome");
        	m.addObject("success","You have successfully created an account"+" "+ ad.getUserName() +"!");
		}
		else
		{
			m.setViewName("Failed");
			
			m.addObject("failed","No new account has been created."
					+ "If you already have an account plese login.");
		}
		return m;

		
		}
		
			
	
	@GetMapping("/Movie")
	public ModelAndView addMovies() {
		ModelAndView model=new ModelAndView();
		model.setViewName("NewFile");
		model.addObject("deloitte");
		
		return model;
	}




}
