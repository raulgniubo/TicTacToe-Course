//
//  PlayerProfile.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import SwiftUI

struct PlayerProfile: Equatable {
  var name: PlayerName
  var image: ImageResource
  var type: PlayerType
}

extension PlayerProfile {
  static var defaultPlayer1: Self {
    .init(name: .player1, image: .playerBoy1, type: .human)
  }
  
  static var defaultPlayer2: Self {
    .init(name: .ai, image: .playerBot1, type: .bot)
  }
}
