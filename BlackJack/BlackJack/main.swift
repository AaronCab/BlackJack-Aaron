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
    } else if hitOrPass == "pass" {
        game.stopHits(hitPlayers: false)
        let winStatus = game.computerVsPlayer(randomScore: 0)
        // game.gameStatus()
        print(winStatus)
    }
    
    
   
//    print("Would you like to play again?")
//    let answer = readLine()?.lowercased() ?? ""
//    if answer == "yes" {
//        game.newGame()
//    } else {
//        gameOver = true
//    }
} while gameOver



