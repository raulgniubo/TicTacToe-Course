//
//  Player.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/23/25.
//

import SwiftUI

struct Player {
  let profile: PlayerProfile
  let cellSymbol: CellState
  var wins: Int = 0
  
  var isBot: Bool { profile.type == .bot }
  var name: PlayerName { profile.name }
  var image: ImageResource { profile.image }
  
  init(profile: PlayerProfile, symbol: CellState) {
    self.profile = profile
    self.cellSymbol = symbol
  }
}

extension Player: Equatable {
  static func == (lhs: Player, rhs: Player) -> Bool {
    lhs.profile == rhs.profile && lhs.cellSymbol == rhs.cellSymbol
  }
}

extension Player {
  static var defaultPlayer: Self {
    .init(profile: .defaultPlayer1, symbol: .x)
  }
}
