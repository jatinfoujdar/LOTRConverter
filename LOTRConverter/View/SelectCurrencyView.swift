import SwiftUI

struct SelectCurrencyView: View {

    @Environment(\.dismiss) var dismiss
    @State var leftcurrency : Currency
    @State var rightcurrency: Currency
    
    var body: some View {
        ZStack(alignment: .center){
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                IconsGridView(currency: leftcurrency)
                
               
               
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                IconsGridView(currency: rightcurrency)
                
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
    SelectCurrencyView(leftcurrency: .silverPenny, rightcurrency: .goldPenny)
}
