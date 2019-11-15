//
//  Suit.swift
//  BlackJack
//
//  Created by Antonio Flores on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

enum Suit: String {
    case diamond = "♦️"
    case heart = "♥️"
    case spade = "♠️"
    case club = "♣️"
}

extension Suit: CaseIterable { }

