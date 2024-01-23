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
                        //CardView()
                    } label: {
                        IntroView(characterName: "界徐盛", characterReference: "犯大吴疆土者盛必击而破之", imageName: "jiedabaotou")
                    }
                    NavigationLink {
                        //CardView()
                    } label: {
                        IntroView(characterName: "于吉", characterReference: "猜猜看啊", imageName: "yujitou")
                    }
                    NavigationLink {
                        //CardView()
                    } label: {
                        IntroView(characterName: "界徐盛", characterReference: "犯大吴疆土者盛必击而破之", imageName: "jiedabaotou")
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
