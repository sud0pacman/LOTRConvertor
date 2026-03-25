//
//  SelectCurrency.swift
//  LOTRConvertor
//
//  Created by G'aniyev Muhammad on 14/03/26.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background pachment here
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                ZStack(alignment: .bottom) {
                    //Currency Image
                    Image(.copperpenny)
                        .resizable()
                        .scaledToFit()
                    
                    // Currency name
                    Text("Copper Penny")
                        .padding(3)
                        .font(.caption)
                        .frame(maxWidth: .infinity)
                        .background(.brown.opacity(0.75))
                }
                .padding(3)
                .frame(width: 100, height: 100)
                .background(.brown)
                .clipShape(.rect(cornerRadius: 25))
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // Currency icons
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrency()
}
