//
//  GameState.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/23/25.
//

import Foundation

enum GameState: Equatable {
  case playing
  case won(Player)
  case tied
  
  var isGameOver: Bool {
    switch self {
    case .playing: false
    case .won, .tied: true
    }
  }
  
  var isTied: Bool {
    self == .tied
  }
  
  var winnerPlayer: Player? {
    switch self {
    case .won(let player): player
    case .tied, .playing: nil
    }
  }
}
