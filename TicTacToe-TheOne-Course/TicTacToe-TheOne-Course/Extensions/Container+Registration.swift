//
//  Container+Registration.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import Factory

extension Container {
  var appModeStore: Factory<AppModeLiveStore> {
    self { MainActor.assumeIsolated { AppModeLiveStore() } }.singleton
  }
  
  var gameSetupStore: Factory<GameSetupLiveStore> {
    self { MainActor.assumeIsolated { GameSetupLiveStore() } }.singleton
  }
}
