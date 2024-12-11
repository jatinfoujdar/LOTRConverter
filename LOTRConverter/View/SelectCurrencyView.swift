import SwiftUI

struct SelectCurrencyView: View {

    @Environment(\.dismiss) var dismiss
    
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
                    ForEach(0..<5){ _ in
                        CurrencyIconView(currencyImage: .goldpiece, currencyName: "Gold Piece")
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
    SelectCurrencyView( )
}