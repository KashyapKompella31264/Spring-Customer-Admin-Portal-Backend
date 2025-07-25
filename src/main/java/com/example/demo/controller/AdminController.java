package com.example.demo.controller;


import java.awt.PageAttributes.MediaType;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.Product;
import com.example.demo.service.AdminService;

import jakarta.mail.Multipart;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService; 
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		long count=adminService.customercount();
		mv.addObject("count", count);
		return mv;
	}
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("deletecustomer")
	public ModelAndView deletecustomer() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletecustomer");
		List<Customer> customers=adminService.viewAllCustomers();
		mv.addObject("customerlist", customers);
		return mv;
	}
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallcustomers");
		long count=adminService.customercount();
		mv.addObject("count", count);
		List<Customer> customers=adminService.viewAllCustomers();
		mv.addObject("customerlist", customers);
		return mv;
		}
	@GetMapping("delete")
	public String delete(@RequestParam int id) {
		adminService.deletecustomer(id);		
		return "redirect:/deletecustomer";
	}
	@GetMapping("addproduct")
	public ModelAndView addimage() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addproduct");
		return mv;
	}
	@PostMapping("insertproduct")
	public ModelAndView insertProduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) 
	        throws IOException, SerialException ,SQLException{
	    String name = request.getParameter("pname");
	    double cost = Double.parseDouble(request.getParameter("pcost"));
	    String description = request.getParameter("pdescription");

	    byte[] bytes = file.getBytes(); // May throw IOException
	    SerialBlob blob = new javax.sql.rowset.serial.SerialBlob(bytes); // May throw SerialException
	    
	    Product product = new Product();
	    product.setName(name);
	    product.setImage(blob);
	    product.setCost(cost);
	    product.setDescription(description);
	    
	    String message = adminService.addproduct(product);
	    ModelAndView mv=new ModelAndView();
	    mv.setViewName("addproduct");
	    mv.addObject("message", message);
	    return mv;
	}
	@GetMapping("viewallproducts")
	public ModelAndView viewallproducts() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallproducts");
		List<Product> products=adminService.ViewAllProducts();
		mv.addObject("products", products);
		return mv;
	}
	@GetMapping("displayproductimage")
	public List<Product> displayproductimage(@RequestParam int id){
		Product product=adminService.viewproductbyid(id);
		byte[] imagesbytes=null;
		imagesbytes=product.getImage().getBytes(1, (int)product.getImage().length());
		return ResponseEntity.ok().contentType(MediaType);


	}
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String aname=request.getParameter("ausername");
		String apassword=request.getParameter("apassword");
		Admin admin=adminService.checkAdminLogin(aname, apassword);
		if(admin!=null) {
			mv.setViewName("adminhome");
			long count=adminService.customercount();
			mv.addObject("count", count);
		}else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "login failed");
		}
		return mv;
		
	}
}
