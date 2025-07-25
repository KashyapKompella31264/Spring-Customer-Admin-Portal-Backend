package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ProductRepository;
import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.Product;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.CustomerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private ProductRepository productrepository;
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public List<Customer> viewAllCustomers() {
		return customerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String username, String password) {
		return adminRepository.checkAdminLogin(username, password);
	}
	@Override
	public long customercount() {
		return customerRepository.count();
	}
	@Override
	public void deletecustomer(int id) {
		customerRepository.deleteById(id);
		
	}
	@Override
	public String addproduct(Product product) {
		productrepository.save(product);
		return "Product added Successfully";
	}
	@Override
	public List<Product> ViewAllProducts() {
		return productrepository.findAll();
	}
	@Override
	public Product viewproductbyid(int id) {
		return productrepository.findById(id).get();
	}
	
}
