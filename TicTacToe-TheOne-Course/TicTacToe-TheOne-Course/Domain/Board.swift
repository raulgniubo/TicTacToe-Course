//
//  Board.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/23/25.
//

import Foundation

typealias Board = [[CellState]]

extension Board {
  static var empty: Self {
    .init(repeating: .init(repeating: .empty, count: GameConstants.boardSize), count: GameConstants.boardSize)
  }
}
