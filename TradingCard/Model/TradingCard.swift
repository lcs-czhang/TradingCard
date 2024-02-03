//
//  TradingCard.swift
//  TradingCard
//
//  Created by Yuzhou Zhang on 2024-02-03.
//

import Foundation
struct TradingCard{
    let imageName: String
    let forceName: String
    let characterName: String
    let characterDescription: String
    let characterHitPoint: Int
    let characterReference: String
}
let jiedabao = TradingCard(imageName: "jiedabao", forceName: "wu", characterName: "界徐盛", characterDescription: """
                                 破军
                                 当你使用【杀】指定一个目标后，你可以发动此技能，将其至多X张牌扣置于该角色的武将牌旁（X为其体力值）；若如此做，当前回合结束后，该角色获得这些牌。你使用【杀】对手牌数与装备数均不大于你的角色造成伤害时，此伤害+1。
                                 """, characterHitPoint: 4, characterReference: "犯大吴疆土者盛必击而破之！")

let yuji = TradingCard(imageName: "yuji", forceName: "qun", characterName: "于吉", characterDescription:
                                """
                                 蛊惑
                                 当你需要使用或打出一张基本牌或普通锦囊牌时，你可以声明并将一张手牌扣于桌上。若无人质疑，则该牌按你所述之牌来用。若有人质疑，则亮出验明：若为真，质疑者各失去1点体力；若为假，质疑者各摸一张牌，除非被质疑的牌是红桃且为真（仍可用），否则无论真假，该牌都作废，弃置之。
                                """
                       , characterHitPoint: 3, characterReference: "猜猜看啊！")

let wolongzhuge = TradingCard(imageName: "wolongzhuge", forceName: "shu", characterName: "卧龙诸葛", characterDescription: """
                                 八阵
                                 锁定技，当你没装备防具时，始终视为你装备着【八卦阵】。
                                 
                                 火计
                                 你可以将一张红色手牌当【火攻】使用。
                                 
                                 看破
                                 你可以将一张黑色手牌当【无懈可击】使用。
                                 """, characterHitPoint: 3, characterReference: "你可识得此阵？")
