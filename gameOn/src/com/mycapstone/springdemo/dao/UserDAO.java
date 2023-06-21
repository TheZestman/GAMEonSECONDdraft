package com.mycapstone.springdemo.dao;

import java.util.List;

import com.mycapstone.springdemo.entity.User;

public interface UserDAO {

	public List<User> getUsers();

	public void saveUser(User theUser);

	public User getUser(int theId);

	public void deleteUser(int theId);
	

	
}
