//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Viktor Shurapov on 3/25/22.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "🧟‍♀️", "😈", "🤹‍♂️", "🕴", "🧞"].shuffled()
        return MemoryGame<String>(numberOfPairsOfCards: 5) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
