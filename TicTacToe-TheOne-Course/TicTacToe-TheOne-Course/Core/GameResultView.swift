//
//  GameResultView.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/23/25.
//

import SwiftUI

struct GameResultView: View {
  let gameState: GameState
  let resetGame: () -> ()
  
  var body: some View {
    VStack(spacing: 24) {
      titleView
      if let winnerPlayer = gameState.winnerPlayer {
        winnerPlayerView(winnerPlayer)
      }
      playAgainButton
    }
    .padding()
    .infinityFrame()
    .background(Color.appTheme.viewBackground)
    .presentationDetents([.height(GameConstants.winnerSheetHeight)])
    .presentationCornerRadius(AppCornerRadius.overall.value)
    .presentationDragIndicator(.visible)
  }
}

private extension GameResultView {
  var titleView: some View {
    Text(gameState.isTied ? "🤝 It's a Tie!" : "🎉 Game Over!")
      .font(.title)
      .fontWeight(.bold)
      .foregroundStyle(gameState.isTied ? Color.appTheme.alternateAccent : Color.appTheme.success)
  }
  
  func winnerPlayerView(_ winnerPlayer: Player) -> some View {
    HStack(spacing: 8) {
      Text("Winner:")
        .font(.title3)
        .fontWeight(.medium)
        .foregroundStyle(Color.appTheme.secondaryText)
      
      Image(winnerPlayer.image)
        .resizable()
        .scaledToFit()
        .frame(width: 48, height: 48)
      
      Text(winnerPlayer.cellSymbol.symbol)
        .font(.title)
        .fontWeight(.heavy)
        .fontDesign(.rounded)
        .foregroundStyle(winnerPlayer.cellSymbol.color)
        .padding(.horizontal, 12)
        .padding(.vertical, 4)
        .background(
          RoundedRectangle(cornerRadius: AppCornerRadius.overall.value)
            .fill(winnerPlayer.cellSymbol.color.opacity(0.2))
        )
    }
  }
  
  var playAgainButton: some View {
    Label("Play Again", systemImage: "arrow.counterclockwise.circle.fill")
      .primaryButton()
      .button(.press) {
        resetGame()
      }
  }
}

#Preview {
  GameResultView(gameState: .won(.defaultPlayer)) { }
  GameResultView(gameState: .tied) { }
}
