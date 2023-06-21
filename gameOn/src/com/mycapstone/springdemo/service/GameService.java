package com.mycapstone.springdemo.service;

import java.util.List;

import com.mycapstone.springdemo.entity.Game;

public interface GameService {

	public List<Game> getGames();

	public void saveGame(Game theGame);

	public Game getGame(int theId);
	

	

}
