package com.in.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.in.model.Entity.Product;

@Controller
public class HomeController {
	@RequestMapping(value={"/","/index"})
	public String home()
	{
	return("index");
		
	}
	

	@RequestMapping("/Login")
	public String log()
	{
 		 	 
 		  return "Login";
 		 
	}
	@RequestMapping("/Registration")
	public String Reg()
	{
		return("Registration");
	}
	@ModelAttribute("pdt")
	public Product loadprod()
	{
		return new Product();
	}
	
	
	@RequestMapping("/Product")
	public String prod()
	{
		return"Product";
	}
	
}
