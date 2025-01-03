import SwiftUI

struct SelectCurrencyView: View {

    @Environment(\.dismiss) var dismiss
    @State var currency : Currency
    
    var body: some View {
        ZStack(alignment: .center){
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
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
               
               
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                HStack{
                    
                }
                HStack{
                    
                }
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
        }
    }
}


#Preview(){
    SelectCurrencyView(currency: .silverPenny)
}
