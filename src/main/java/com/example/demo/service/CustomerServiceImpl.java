package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;
@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public String customerRegistration(Customer customer) {
		customerRepository.save(customer);
		return "Customered Registered Successfully";
	}
	
	
	@Override
	public Customer checkCustomerLogin(String email, String Password) {
		return customerRepository.checkCustomerLogin(email, Password);
	}


	@Override
	public String update(Customer customer) {
		customerRepository.save(customer);
		return "Updated Sucessfully";
	}
	
}
