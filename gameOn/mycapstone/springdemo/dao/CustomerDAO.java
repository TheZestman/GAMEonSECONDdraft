package com.mycapstone.springdemo.dao;

import java.util.List;

import com.mycapstone.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);
	
	public void deleteCustomer(Customer theCustomer);
	
}
