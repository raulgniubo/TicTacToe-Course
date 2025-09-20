//
//  FirstTurn.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/20/25.
//

import Foundation

enum FirstTurn: String, CaseIterable {
  case you
  case opponent
  case random
}

extension FirstTurn: CustomStringConvertible {
  var description: String {
    rawValue.capitalized
  }
}
