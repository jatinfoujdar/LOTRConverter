//
//  ExchangeInfoView.swift
//  LOTRConverter
//
//  Created by jatin foujdar on 09/12/24.
//

import SwiftUI

struct ExchangeInfoView: View {
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
                
                HStack{
                    Image("goldpiece")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    Image("goldpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                Button("Done"){
                 
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
