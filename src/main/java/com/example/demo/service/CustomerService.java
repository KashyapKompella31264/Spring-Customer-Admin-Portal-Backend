package com.example.demo.service;

import com.example.demo.model.Customer;

public interface CustomerService {
	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String Password);
	public String update(Customer customer);
}
