//
//  TicTacToe_TheOne_CourseApp.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import SwiftUI

@main
struct TicTacToe_TheOne_CourseApp: App {
  @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
  
  var body: some Scene {
    WindowGroup {
      AppModeView()
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
  }
}
