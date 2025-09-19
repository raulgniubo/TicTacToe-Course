//
//  PlayerName.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import Foundation

enum PlayerName {
  case player1
  case player2
  case ai
}

extension PlayerName: CustomStringConvertible {
  var description: String {
    switch self {
    case .player1: "Player 1"
    case .player2: "Player 2"
    case .ai: "AI"
    }
  }
}
