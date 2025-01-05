import SwiftUI

struct SelectCurrencyView: View {

    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency : Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack(alignment: .center){
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                IconsGridView(currency: $topCurrency)
                
               
               
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                IconsGridView(currency: $bottomCurrency)
                
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
                .foregroundStyle(.black)
            }
            .padding()
        }
    }
}


#Preview(){
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPenny
    
    SelectCurrencyView(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
