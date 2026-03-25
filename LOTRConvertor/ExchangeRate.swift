//
//  ExchangeRate.swift
//  LOTRConvertor
//
//  Created by G'aniyev Muhammad on 14/03/26.
//

import SwiftUI

struct ExchangeRate : View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // Left curreny image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(
        leftImage: .goldpiece,
        text: "1 Gold Piece = 4 Gold Pannies",
        rightImage: .goldpenny
    )
}
