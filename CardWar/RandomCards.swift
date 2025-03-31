//
//  RandomCards.swift
//  CardWar
//
//  Created by Denis Lachikhin on 31.03.2025.
//

struct Card {
    let name: String
    let score: Int
    
    func setRandomCard() -> Card {
        let score = Int.random(in: 2...14)
        
        return Card(name: "card" + String(score), score: score)
    }
}
