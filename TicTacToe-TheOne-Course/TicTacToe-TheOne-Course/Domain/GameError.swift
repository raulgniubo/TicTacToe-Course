//
//  GameError.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/23/25.
//

import Foundation

enum GameError: Error {
  case invalidMove(row: Int, col: Int)
  case gameNotInProgress
  case botMoveFailure
  case invalidGameState
}

extension GameError: LocalizedError {
  var errorDescription: String? {
    switch self {
    case .invalidMove(let row, let col):
      "Invalid move at position (\(row), \(col))"
    case .gameNotInProgress:
      "Game is not in progress"
    case .botMoveFailure:
      "Bot failed to make a move"
    case .invalidGameState:
      "Invalid game state"
    }
  }
}
