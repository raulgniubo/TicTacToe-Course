//
//  Difficulty.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/20/25.
//

import Foundation

enum Difficulty: String, CaseIterable {
  case easy
  case medium
  case hard
}

extension Difficulty: CustomStringConvertible {
  var description: String {
    rawValue.capitalized
  }
}
