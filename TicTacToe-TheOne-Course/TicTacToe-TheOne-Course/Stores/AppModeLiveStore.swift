//
//  AppModeLiveStore.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import Foundation
import Combine

@MainActor
final class AppModeLiveStore: ObservableObject {
  @Published private(set) var appMode: AppMode = .gameSetup
  
  func goGameMode() {
    appMode = .game
  }
  
  func goSetupMode() {
    appMode = .gameSetup
  }
}
