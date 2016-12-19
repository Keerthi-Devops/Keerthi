package com.in.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.in.model.Entity.Product;
import com.in.model.Entity.Register;
import com.in.model.Service.ProductService;

@Controller
public class HomeController 
{
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(value={"/","/index"})
	public String home()
	{
	return("index");
		
	}
	
	

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView getlog( @RequestParam(required = false) String authfailed, String logout,String denied)     
	{
		String message = "";
		if (authfailed != null) {
			message = "Invalid username of password, try again !";
		} else if (logout != null) {
			message = "Logged Out successfully, login again to continue !";
		} else if (denied != null) {
			message = "Access denied for this user !";
		}
		
		return new ModelAndView("login","message", message);	 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	 public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		 System.out.println("in login logout method");
	     Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	     if (auth != null){    
	         new SecurityContextLogoutHandler().logout(request, response, auth);
	     }
	     return "redirect: index?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	 }	 

	@RequestMapping("403page")
	public String ge403denied() {
		return "redirect:login?denied";
	}
	
	
	@RequestMapping("/users")
	public String getus()     
	{
		return "index";
	}
	
	@ModelAttribute("registration")
	public Register bind()
	{
		return new Register();
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
	
	@RequestMapping("/logout")
	public String lgo()
	{
		return"index";
	}
	@RequestMapping("/ViewAllProducts")
	public String all()
	{
		return "ViewAllProducts";
	}
	
	@RequestMapping("/sony")
	public @ResponseBody List<Product> getAllProduct()
	{
		System.out.println("i am in ....");
		return productService.getAllProduct();
	}
	
}
