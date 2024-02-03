//
//  ContentView.swift
//  TradingCard
//
//  Created by Yuzhou Zhang on 2024-01-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                List {
                    NavigationLink {
                        CardView(character:jiedabao)
                    } label: {
                        IntroView(character:jiedabao)
                    }
                    NavigationLink {
                        CardView(character:yuji)
                    } label: {
                        IntroView(character:yuji)
                    }
                    NavigationLink {
                        CardView(character:wolongzhuge)
                    } label: {
                        IntroView(character:wolongzhuge)
                    }
                }
            }
            .navigationTitle("三国杀trading card")
        }
    }
}

#Preview {
    ContentView()
}
