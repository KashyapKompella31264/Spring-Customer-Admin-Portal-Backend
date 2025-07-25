package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Customer;
import com.example.demo.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerservice;
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("customerreg")
	public ModelAndView customerreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerreg");
		return mv;
	}
	@PostMapping("insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request) {
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String age=request.getParameter("cage");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String password=request.getParameter("cpassword");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		
		Customer customer=new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setAge(age);
		customer.setDateofBirth(dob);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setLocation(location);
		customer.setContact(contact);
		
		String message=customerservice.customerRegistration(customer);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message",message);
		return mv;
	}
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("cid"));
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String age=request.getParameter("cage");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String password=request.getParameter("cpassword");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		
		Customer customer=new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setAge(age);
		customer.setDateofBirth(dob);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setLocation(location);
		customer.setContact(contact);
		customerservice.update(customer);
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("updatecustomer");
		return mv;
	}
	@GetMapping("updatecustomer")
	public ModelAndView updatecustomer() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updatecustomer");
		return mv;
		}
	@GetMapping("customerhome")
	public ModelAndView customerhome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerhome");
		return mv;
		}
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String cemail=request.getParameter("cemail");
		String cpassword=request.getParameter("cpassword");
		Customer cust=customerservice.checkCustomerLogin(cemail, cpassword);
		if(cust!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("customer", cust);
			mv.setViewName("customerhome");
			
		}
		else {
			mv.setViewName("customerlogin");
			mv.addObject("message", "login failed");
			
		}
		return mv;
	}
	@GetMapping("customerprofile")
	public ModelAndView customerprofile() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerprofile");
		return mv;
	}
	@GetMapping("customerlogin")
	public ModelAndView customerlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	@GetMapping("customerlogout")
	public ModelAndView customerlogout() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("message", "successfully Logged out");
		mv.setViewName("customerlogin");
		return mv;
	}
}
