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
        deck = Card.newDeck(aceValue: 1)
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
        case (22...30):
            print("Bust⚰️💀")
        default:
            print("Continue😉🧐")
             game.hitMe()
        }
      
    }
    
}
