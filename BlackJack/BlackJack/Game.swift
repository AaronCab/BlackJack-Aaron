//
//  Game.swift
//  BlackJack
//
//  Created by Antonio Flores on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    var deck = [Card]()
    var player: Player
    
    init(player: Player) {
        self.player = player
    }
    var hitPlayers: Bool {
        return true
    }
    var hasMoreCards: Bool {
        return !deck.isEmpty
    }
    
    var randomComputerScore = Int.random(in: 15...30)
    
    func newGame() {
        player.score = 0
      //ace value should be to differ between 1 or 11
        deck = Card.newDeck(aceValue: 1)
      //creating an empty array here will start a new hand for you player
      //player.cardsArray = []
    }
    
    func stopHits(hitPlayers: Bool) -> Int {
        if hitPlayers == false {
            print(randomComputerScore)
           if randomComputerScore > player.score && randomComputerScore < 22 {
                     print("You lose!😔")
                 } else {
                     print("You Win!!")
                 }
        }
        return randomComputerScore
    }
    
    func hitMe() -> Card? {
        if hitPlayers == true {
            deck = deck.shuffled()
        }
        guard let card = deck.popLast() else {
          return nil
        }
        player.cardsArray.append(card)
        player.score += card.value
        print("cards: \(player.cardsArray.map{ $0.stringify() }) score: \(player.score)")
        return card
    }
    
    func computerVsPlayer(randomScore: Int?) -> String {
        if randomComputerScore > player.score && randomComputerScore < 22 {
            return "Would you like to play again?"
        } else {
            return "Congratulations🥳"
        }
    }
    
    func gameStatus() {
        switch player.score {
        case (21):
            print("🃏BlackJack🃏")
          //calling new game here will create new game after blackjack
            //game.newGame()
          
        case (22...30):
            print("Bust⚰️💀")
            //calling new game here will create new game after bust
            //game.newGame()
        default:
            print("Continue😉🧐")
             //game.hitMe()
            //no need to call this function here
          //If you do it will always execute
        }

    }
    
}
