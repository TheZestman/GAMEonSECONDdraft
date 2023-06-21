package com.mycapstone.springdemo.service;

import java.util.List;

import com.mycapstone.springdemo.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);
	
	public void deleteCustomer(Customer theCustomer);
	
}
