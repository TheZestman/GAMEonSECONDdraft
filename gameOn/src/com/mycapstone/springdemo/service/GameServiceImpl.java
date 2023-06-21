package com.mycapstone.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycapstone.springdemo.dao.GameDAO;
import com.mycapstone.springdemo.entity.Game;

@Service
public class GameServiceImpl implements GameService {

	// need to inject Game dao
	@Autowired
	private GameDAO gameDAO;
	
	@Override
	@Transactional
	public List<Game> getGames() {
		return gameDAO.getGames();
	}
	@Override
	@Transactional
	public void saveGame(Game theGame) {

		gameDAO.saveGame(theGame);
	}

	@Override
	@Transactional
	public Game getGame(int theId) {
		
		return gameDAO.getGame(theId);
	}

}





