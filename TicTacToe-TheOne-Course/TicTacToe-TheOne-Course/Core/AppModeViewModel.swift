//
//  AppModeViewModel.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import Foundation
import Combine
import Factory

final class AppModeViewModel: ObservableObject {
  @Published var appMode: AppMode = .gameSetup
  private var cancellables = Set<AnyCancellable>()
  @Injected(\.appModeStore) var appModeStore
  
  init() {
    setSubscribers()
  }
}

private extension AppModeViewModel {
  func setSubscribers() {
    appModeStore.$appMode
      .receive(on: DispatchQueue.main)
      .sink { [weak self] _ in
        guard let self else { return }
        updateAppMode()
      }
      .store(in: &cancellables)
  }
  
  func updateAppMode() {
    appMode = appModeStore.appMode
  }
}
