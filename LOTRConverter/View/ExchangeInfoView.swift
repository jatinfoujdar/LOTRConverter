//
//  ExchangeInfoView.swift
//  LOTRConverter
//
//  Created by jatin foujdar on 09/12/24.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                    .fontWeight(.bold)
                
                Text("Here at the Prancing Pont, we are happy to offer you a place where you can exchange all the known curriences in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person insted of a peice of paper we realised it had no value to us . Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                ExchangeRateView(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                
                ExchangeRateView(leftImage: .goldpenny, text: "1 Gold Pieces = 4 Silver Pennies", rightImage: .silverpiece)
                
                ExchangeRateView(leftImage: .silverpenny, text: "1 Silver Pinny = 4 Silver Pennies", rightImage: .silverpenny)
                
                ExchangeRateView(leftImage: .silverpenny, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .copperpenny)
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
        
    }
}


#Preview {
    ExchangeInfoView()
}



