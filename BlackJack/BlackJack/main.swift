//
//  main.swift
//  BlackJack
//
//  Created by Antonio Flores on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")

let game = Game(player: Player(score: 0, playerName: "Player"))

game.newGame()

var gameOver = true

repeat {
    print("Type hit to get your first card or pass when done")
    let hitOrPass = readLine()?.lowercased() ?? ""
    if hitOrPass == "hit" {
        let _ = game.hitMe()
      //should check game status at all time to see if the user has won or bust or would like to continue
      //game.gameStatus()
    } else if hitOrPass == "pass" {
        game.stopHits(hitPlayers: false)
        let winStatus = game.computerVsPlayer(randomScore: 0)
      //should check game status at all time to see if the user has won or bust or would like to continue
        //game.gameStatus()
        print(winStatus)
      //once the game is over, the user has passed and seen their result via gameStatus()
      //Then you can restart the game
        //game.newGame()
    }
    
    //Try not leaving commented out code when submitting
   
//    print("Would you like to play again?")
//    let answer = readLine()?.lowercased() ?? ""
//    if answer == "yes" {
//        game.newGame()
//    } else {
//        gameOver = true
//    }
} while gameOver

//The win case always declares the user the winner unless they bust
//See game.stopHits()

//Rubric
//1a Optionals - Exceptional
//
//1b Enumerations - Exceptional
//
//1c Structs and Classes  - Exceptional
//
//LF 2 Variables - Exceptional
//
//LF 3 Arrays - Exceptional
//
//LF 4-  Developing (several errors involving win cases, win decelerations, and restart button)
//
//LF 5 - Proficient (not making use of some key functions) in main.swfit
//
//LF 5a - Exceptional
//
//EF 1 - Developing (some solutions were solved but still a few bugs in the program)
//
//EF 2 (N/A)
//
//EF 4 (N/A)



