package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.Product;

public interface AdminService {
	public List<Customer> viewAllCustomers();
	public Admin checkAdminLogin(String username,String password);
	public long customercount();
	public void deletecustomer(int id);
	public String addproduct(Product product);
	public List<Product> ViewAllProducts();
	public Product viewproductbyid(int id);
}
