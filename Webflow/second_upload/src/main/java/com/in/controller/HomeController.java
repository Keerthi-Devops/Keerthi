package com.in.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.in.model.Entity.Product;
import com.in.model.Entity.Register;
import com.in.model.Service.CategoryService;
import com.in.model.Service.ProductService;

@Controller
public class HomeController 
{
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	
	
	@RequestMapping(value={"/","/index"})
	public String home(Map<String, Object> map)
	{
		map.put("categoryList", categoryService.getAllCategory());

	return("index");
		
	}
	
	

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView getlog( @RequestParam(required = false) String authfailed, String logout,String denied , Map<String, Object> map)     
	{
		String message = "";
		if (authfailed != null) {
			message = "Invalid username or password, try again !";
		} else if (logout != null) {
			message = "Logged Out successfully, login again to continue !";
		} else if (denied != null) {
			message = "Access denied for this user !";
		}
		map.put("categoryList", categoryService.getAllCategory());

		return new ModelAndView("login","message", message);	 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	 public String logoutPage (HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
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
	public Product loadprod(Map<String, Object> map)
	{
		map.put("categoryList", categoryService.getAllCategory());

		return new Product();
	}
	@RequestMapping("/CategoryPage")
	public String cp(@RequestParam("pdt") String id, Model map)
	{
		
		System.out.println(id);
		/*List productList1=productService.getAllProductfromCategory(id);
		for(Product p:productList1)
		System.out.println();
		map.addAttribute("productList",productList1 );*/
		//map.addAttribute("categoryList", categoryService.getAllCategory());
		map.addAttribute("productList", productService.getAllProductfromCategory(id));
		return "CategoryPage";
	
	}
	
	
	@RequestMapping("/Product")
	public String prod(Map<String, Object> map)
	{
		
		map.put("categoryList", categoryService.getAllCategory());

		return"Product";
	}
	
	@RequestMapping("/ProductDetails")
	public String prd(@RequestParam("pd")int Pid, Map<String, Object> map, Product product)
	{
		Product p= productService.getProduct(Pid);
		map.put("product", p);
		return"ProductDetails";
				
	}
	
	
	@RequestMapping("/logout")
	public String lgo(Map<String, Object> map)
	{
		map.put("Categorylist", categoryService.getAllCategory());
		return"index";
	}
	@RequestMapping("/ViewAllProducts")
	public String all(Map<String, Object> map)
	{
		map.put("categoryList", categoryService.getAllCategory());

		return "ViewAllProducts";
	}
	
	@RequestMapping("/sony")
	public @ResponseBody List<Product> getAllProduct()
	{
		System.out.println("i am in ....");
		return productService.getAllProduct();
	}
	
}
