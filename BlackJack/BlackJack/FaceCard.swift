//
//  FaceCard.swift
//  BlackJack
//
//  Created by Antonio Flores on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

enum FaceCard: String {
   case jack = "🎃"
    case queen = "👸"
    case king = "🤴"
}

extension FaceCard: CaseIterable { }
