package com.in.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.in.model.Entity.Product;
import com.in.model.Entity.Register;
import com.in.model.Entity.Product;
import com.in.model.Entity.Product;
import com.in.model.Service.ProductService;
import com.in.model.Service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/products") //jsp page
	public String setupproductForm(Map<String, Object> map, @ModelAttribute("pdt") Product product) {
		return "Product"; //jsp page
	}
	
	@ModelAttribute("pdt") 
	public Product bind() {
		return new Product(); // tablename;
	}

	@RequestMapping(value = "/trolly", method = RequestMethod.POST)
	public ModelAndView padd(@Valid @ModelAttribute("pdt") Product product, BindingResult result,
			@RequestParam String action,  @RequestParam("file") MultipartFile file,
			Map<String, Object> map) {
		if (result.hasErrors()) {
			return new ModelAndView("Product");
		}
		switch (action.toLowerCase()) {
		case "add":
			if (!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = servletContext.getRealPath("/");
					File dir = new File(rootPath + File.separator + "resources/images/product");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir + File.separator +  product.getPname() + ".jpg");

					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					System.out.println(serverFile);

					Product product1 = product;
					map.put("product", product1);
					map.put("productList", productService.getAllProduct());
					ModelAndView mm = new ModelAndView("productList");
					mm.addObject("message", "You successfully uploaded file");
					productService.add(product);
					return new ModelAndView("Product" );

				} catch (Exception e) {
					return new ModelAndView("Product","message","You failed to upload " + product.getPname() + " => " + e.getMessage());
				}
			} 

			
			break;

		case "update":
			productService.update(product);
			
			break;

		case "delete":
			productService.delete(product.getPid());
						break;

		}

		
		return new ModelAndView("redirect:Productlist");
	}

	@RequestMapping("Productlist")
	public ModelAndView getList() 
	{
		List productlist = productService.getAllProduct();
				return new ModelAndView("Productlist", "productlist", productlist);
	}

	@ModelAttribute("registration")
	public Register bind2()
	{
		return new Register();
	}
	

}






