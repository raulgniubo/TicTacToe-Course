//
//  PlayerType.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import Foundation

enum PlayerType {
  case human
  case bot
}

extension PlayerType {
  var isHuman: Bool {
    self == .human
  }
  
  var isBot: Bool {
    self == .bot
  }
}
