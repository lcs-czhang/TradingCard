//
//  CardView.swift
//  TradingCard
//
//  Created by Yuzhou Zhang on 2024-01-22.
//

import SwiftUI

struct CardView: View {
    let imageName: String
    let forceName: String
    let characterName: String
    let characterDescription: String
    let characterHitPoint: Int
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 350.0, height: 435.0)
                .foregroundStyle(.black)
                .overlay(VStack {
                    Spacer()
                    Rectangle()
                        .foregroundStyle(.yellow)
                        .frame(width: 300.0, height: 75.0)
                        .overlay(HStack {
                            Image(forceName)
                                .resizable()
                                .scaledToFit()
                            Text(characterName)
                                .font(.title)
                                .foregroundColor(Color.white)
                            Image("gouyu")
                                .resizable()
                            Text("X\(characterHitPoint)")
                                .font(.title)
                                .foregroundColor(Color.white)
                        })
                    Image(imageName)
                        .resizable()
                        .frame(width: 300.0, height: 300.0)
                        .padding(.bottom, 25.0)
                })
            Text(characterDescription)
        }
            
    }
}

#Preview {
    CardView(imageName: "jiedabao", forceName: "wu", characterName: "界徐盛", characterDescription: "", characterHitPoint: 4)
}
