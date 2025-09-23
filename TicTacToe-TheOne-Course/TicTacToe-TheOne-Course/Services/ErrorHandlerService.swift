//
//  ErrorHandlerService.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/23/25.
//

import Foundation

protocol ErrorHandlerProtocol {
  func handle(_ error: GameError)
  func logError(_ error: GameError)
}

final class ErrorHandlerService: ErrorHandlerProtocol {
  func handle(_ error: GameError) {
    logError(error)
    // we do something with it
    // Could add user notification, crash reporting, etc.
  }
  
  func logError(_ error: GameError) {
    #if DEBUG
    print("🎮 Game Error: \(error.errorDescription ?? "Unknown Error")")
    #endif
    
    // In production, send to analytics/crash reporting
  }
}
