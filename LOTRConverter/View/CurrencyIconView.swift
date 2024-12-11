//
//  CurrencyIconView.swift
//  LOTRConverter
//
//  Created by jatin foujdar on 11/12/24.
//

import SwiftUI

struct CurrencyIconView: View {
    let currencyImage : ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            Text(currencyName)
                .padding(3)
                .foregroundColor(.white)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100,height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIconView(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
