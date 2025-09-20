//
//  SelectionGroupView.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/20/25.
//

import SwiftUI

struct SelectionGroupView<Option: Hashable & CustomStringConvertible>: View {
  let title: String
  let options: [Option]
  @Binding var selected: Option
  
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      titleView
      optionsView
    }
  }
}

private extension SelectionGroupView {
  var titleView: some View {
    Text(title)
      .font(.headline)
      .foregroundStyle(Color.appTheme.info)
  }
  
  var optionsView: some View {
    HStack(spacing: 8) {
      ForEach(options, id: \.self) { option in
        optionView(for: option)
          .button(.press) {
            selectOption(option)
          }
      }
    }
  }
  
  func optionView(for option: Option) -> some View {
    Text(option.description)
      .fontWeight(.medium)
      .foregroundStyle(selected == option ? Color.appTheme.accentContrastText : Color.appTheme.text)
      .frame(maxWidth: .infinity)
      .padding(.vertical, 12)
      .background(selected == option ? Color.appTheme.info.opacity(0.6) : Color.appTheme.info.opacity(0.2))
      .cornerRadius(.button)
      .shadow(.light)
  }
}

private extension SelectionGroupView {
  func selectOption(_ option: Option) {
    withAnimation(.spring) {
      selected = option
    }
  }
}

#Preview {
  Preview()
}

fileprivate struct Preview: View {
  @State private var selectedDifficulty: Difficulty = .hard
  
  var body: some View {
    SelectionGroupView(
      title: "Difficulty",
      options: Difficulty.allCases,
      selected: $selectedDifficulty
    )
    .infinityFrame()
    .padding()
    .background(Color.appTheme.viewBackground)
  }
}
