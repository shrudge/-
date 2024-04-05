//
//  ContentView.swift
//  Basic-Card-Game
//
//  Created by Meet Balani on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.backgroundCloth).resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Image(.logo)
                Spacer()
                HStack {
                    Spacer()
                    Image(.card2)
                    Spacer()
                    Image(.card7)
                    Spacer()
                }
                Spacer()
                Image(.button)
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
