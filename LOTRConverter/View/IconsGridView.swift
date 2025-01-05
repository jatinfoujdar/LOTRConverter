

import SwiftUI

struct IconsGridView: View {
    @Binding var currency : Currency
    
    var body: some View {
        
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
            ForEach(Currency.allCases){ currency in
                if self.currency == currency{
                    CurrencyIconView(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        )
                }
                else{
                    CurrencyIconView(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var currency: Currency = .silverPiece
    IconsGridView(currency: $currency)
}
