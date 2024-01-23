//
//  IntroView.swift
//  TradingCard
//
//  Created by Yuzhou Zhang on 2024-01-22.
//

import SwiftUI

struct IntroView: View {
    
    // MARK: Stored properties
    let characterName: String
    let characterReference: String
    let imageName: String
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .padding(.trailing, 15)
            
            VStack {
                VStack(alignment: .leading) {
                    Text(characterName)
                        .font(.headline)
                    Text(characterReference)
                        .font(.footnote)
                }
            }
            
        }
    }
}

#Preview {
    IntroView(characterName: "界徐盛", characterReference: "犯大吴疆土者盛必击而破之", imageName: "jiedabaotou")
}
