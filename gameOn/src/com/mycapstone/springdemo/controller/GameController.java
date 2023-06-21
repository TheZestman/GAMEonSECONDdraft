package com.mycapstone.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycapstone.springdemo.entity.Game;
import com.mycapstone.springdemo.service.GameService;

@Controller
@RequestMapping("/game")
public class GameController {

	// need to inject Game service
	@Autowired
	private GameService gameService;
	
	@GetMapping("/list")
	public String listGames(Model theModel) {
		
		// get users from the service
		List<Game> theGames = gameService.getGames();
				
		// add the users to the model
		theModel.addAttribute("games", theGames);
		
		return "list-games";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Game theGame = new Game();
		
		theModel.addAttribute("game", theGame);
		
		return "game-form";
	}
	
	@PostMapping("/saveGame")
	public String saveUser(@ModelAttribute("game") Game theGame) {
		
		// save the user using our service
		gameService.saveGame(theGame);	
		
		return "redirect:/game/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("gameId") int theId,
									Model theModel) {
		
		// get the user from our service
		Game theGame = gameService.getGame(theId);	
		
		// set user as a model attribute to pre-populate the form
		theModel.addAttribute("game", theGame);
		
		// send over to our form		
		return "game-form";
	}
}
	









