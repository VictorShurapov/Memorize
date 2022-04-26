//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Viktor Shurapov on 3/25/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
