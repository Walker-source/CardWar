//
//  ContentView.swift
//  CardWar
//
//  Created by Denis Lachikhin on 31.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = Card(name: "back", score: 0)
    @State var cpuCard = Card(name: "back", score: 0)
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
                
            
            VStack(spacing: 60) {
                Image("logo")
                
                HStack {
                    Spacer()
                    
                    Image(playerCard.name)
                    
                    
                    Spacer()
                    
                    Image(cpuCard.name)
                    
                    Spacer()
                }
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                HStack {
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            }
        }
        
        
    }
    
     func deal() {
       // Randomize the player card
        playerCard = playerCard.setRandomCard()
        
       // Randomize the cpus card
        cpuCard = cpuCard.setRandomCard()
        
       // Update the score
        if playerCard.score > cpuCard.score {
            playerScore += 1
        } else if playerCard.score < cpuCard.score {
            cpuScore += 1
        }
         else {
            cpuScore += 0
             playerScore += 0
        }
   }
}

#Preview {
    ContentView()
}
