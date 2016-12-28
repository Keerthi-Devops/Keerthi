package com.in.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.in.model.Entity.Register;
import com.in.model.Entity.RoleTable;
import com.in.model.Service.RegisterService;

@Controller
public class RegisterController
{
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping("/Registration")
	public String Reg()
	{
		return("Registration");
	}
	
	@ModelAttribute("registration")
	public Register bind()
	{
		return new Register();
	}
	
	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public ModelAndView regpadd(@ModelAttribute("registration") Register r1)
	{
		RoleTable r=new RoleTable();
		r.setRole("Role_USER");
		r.setId_fk(r1);
		r1.setEnable(true);
		registerService.add(r1);
		registerService.addrole(r);
		String message="";
		message="U r Successfully Register";
		return new ModelAndView("index", "message",message);
	}
		
	
}
