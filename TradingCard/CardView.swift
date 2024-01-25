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
                                Image(forceName)
                                    .resizable()
                                    .scaledToFit()
                                Text(characterName)
                                    .font(.title)
                                    .foregroundColor(Color.white)
                                Image("gouyu")
                                    .resizable()
                                    .scaledToFit()
                                Text("X\(characterHitPoint)")
                                    .font(.title)
                                    .foregroundColor(Color.white)
                                    .padding(.trailing, 10.0)
                            })
                        Image(imageName)
                            .resizable()
                            .frame(width: 300.0, height: 300.0)
                        ZStack {
                            Rectangle()
                                .opacity(0.5)
                            ScrollView(.vertical){
                                Text(characterDescription)
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
}

#Preview {
    CardView(imageName: "jiedabao", forceName: "wu", characterName: "界徐盛", characterDescription: """
             破军
             当你使用【杀】指定一个目标后，你可以发动此技能，将其至多X张牌扣置于该角色的武将牌旁（X为其体力值）；若如此做，当前回合结束后，该角色获得这些牌。你使用【杀】对手牌数与装备数均不大于你的角色造成伤害时，此伤害+1。
             """, characterHitPoint: 4)
}
