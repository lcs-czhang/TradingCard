//
//  CardView.swift
//  TradingCard
//
//  Created by Yuzhou Zhang on 2024-01-22.
//

import SwiftUI

struct CardView: View {
    let character: TradingCard
    var body: some View {
        ZStack {
            Image("武将背景")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .overlay(VStack {
                    Rectangle()
                        .foregroundStyle(.black)
                        .opacity(0.5)
                        .frame(width: 300.0, height: 60.0)
                        .overlay(HStack {
                            Image(character.forceName)
                                .resizable()
                                .scaledToFit()
                            Text(character.characterName)
                                .font(.title)
                                .foregroundColor(Color.white)
                            Image("gouyu")
                                .resizable()
                                .scaledToFit()
                            Text("X\(character.characterHitPoint)")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.trailing, 10.0)
                        })
                    Image(character.imageName)
                        .resizable()
                        .frame(width: 300.0, height: 300.0)
                    ZStack {
                        Rectangle()
                            .opacity(0.5)
                        ScrollView(.vertical){
                            Text(character.characterDescription)
                                .font(.callout)
                                .foregroundStyle(.white)
                                .padding(25.0)
                        }
                    }
                    .frame(width: 300.0)
            })
        }
    }
            
}


#Preview {
    CardView(character: jiedabao)
}
