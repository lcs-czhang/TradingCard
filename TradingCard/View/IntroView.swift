//
//  IntroView.swift
//  TradingCard
//
//  Created by Yuzhou Zhang on 2024-01-22.
//

import SwiftUI

struct IntroView: View {
    
    // MARK: Stored properties
    let character: TradingCard
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            
            Image(character.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .clipShape(Circle())
            
            VStack {
                VStack(alignment: .leading) {
                    Text(character.characterName)
                        .font(.headline)
                    Text(character.characterReference)
                        .font(.footnote)
                }
            }
            
        }
    }
}

#Preview {
    IntroView(character: jiedabao)
}
