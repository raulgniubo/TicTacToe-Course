//
//  GameView.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/24/25.
//

import SwiftUI

struct GameView: View {
  @StateObject var viewModel: GameViewModel = .init()
  
  var body: some View {
    Text("GameView")
  }
}

#Preview {
  GameView()
}
