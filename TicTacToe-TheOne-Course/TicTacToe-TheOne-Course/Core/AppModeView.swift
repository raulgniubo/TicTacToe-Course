//
//  AppModeView.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import SwiftUI

struct AppModeView: View {
  @StateObject private var viewModel = AppModeViewModel()
  
  var body: some View {
    Group {
      switch viewModel.appMode {
      case .gameSetup:
        Text("Game Setup")
      case .game:
        Text("Game")
      }
    }
    .animation(.easeIn, value: viewModel.appMode)
  }
}

#Preview {
  AppModeView()
}
