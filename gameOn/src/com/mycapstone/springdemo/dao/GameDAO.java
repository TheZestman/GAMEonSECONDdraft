package com.mycapstone.springdemo.dao;

import java.util.List;

import com.mycapstone.springdemo.entity.Game;

public interface GameDAO {

	public List<Game> getGames();
	
	public void saveGame(Game theGame);

	public Game getGame(int theId);
	
}
