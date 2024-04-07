//
//  ContentView.swift
//  Basic-Card-Game
//
//  Created by Meet Balani on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var player_card = "card7"
    @State var player_score =  0
    @State var cpu_card = "card5"
    @State var cpu_score = 0
    
    var body: some View {
        ZStack {
            Image(.backgroundPlain)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image(.logo)
                Spacer()
                HStack {
                    Spacer()
                    Image(player_card)
                    Spacer()
                    Image(cpu_card)
                    Spacer()
                }
                Spacer()
            
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(player_score))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpu_score))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    func deal() {
        //Giving Random values to the cards
        
        //player card
        let player_card_value = Int.random(in: 2...14)
        player_card = "card" + String(player_card_value)
        
        //CPU card
        let cpu_card_value = Int.random(in: 2...14)
        cpu_card = "card" + String(cpu_card_value)
        
        //Score updation function that checks the condition
        if player_card_value > cpu_card_value {
            player_score += 1
        }
        else if cpu_card_value > player_card_value {
            cpu_score += 1
        }
    }
}

#Preview {
    ContentView()
}
