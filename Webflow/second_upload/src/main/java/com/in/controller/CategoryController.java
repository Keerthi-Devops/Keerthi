package com.in.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.in.model.Entity.Category;
import com.in.model.Entity.Register;
import com.in.model.Service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/Category")
	public String setupcategoryForm() {
	//	System.out.println("hiiiiiiiiiiiiiiiiiii ");
		//m.addAttribute("ctg", new Category());
		return "Category"; //jsp page
	}
	
	@ModelAttribute("ctg") //commandNAME
	public Category bind() 
	{
		return new Category(); // tablename
	}
	
	@RequestMapping(value = "/cate", method = RequestMethod.POST)
	public ModelAndView padd(@Valid @ModelAttribute("ctg") Category category, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		if (result.hasErrors()) {
			return new ModelAndView("Category");
		}
		switch (action.toLowerCase()) 
		{
		case "add":
			categoryService.add(category);
			
			break;
		
		case "update":
			categoryService.update(category);
			break;

		case "delete":
			categoryService.delete(category.getCid());
			break;

		}
		return new ModelAndView("redirect:Categorylist");
	}
	
	@RequestMapping("edit")
	public ModelAndView ed(@RequestParam("id") int id) 
	{
		Category category =categoryService.getCategory(id);
		return new ModelAndView ("Category","category",category);
	}

	@RequestMapping("delete")
	public String dt(@RequestParam("id") int id) 
	{
		categoryService.delete(id);
		return ("redirect:Categorylist");

		/*Category category =categoryService.getCategory(id);
		return new ModelAndView ("Category","category",category);*/
	}

		@RequestMapping("Categorylist")
		public ModelAndView getList() 
		{
			List categorylist = categoryService.getAllCategory();
					return new ModelAndView("Categorylist", "catList", categorylist);
		}
	

		@ModelAttribute("registration")
		public Register bind3()
		{
			return new Register();
		}
		



}
	
	
	
