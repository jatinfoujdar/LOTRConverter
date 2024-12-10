import SwiftUI

struct ExchangeRateView: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image("goldpenny")
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}


#Preview(){
    ExchangeRateView(leftImage: .silverpiece , text: "1 silver Piece = 4 Silver Pennies", rightImage:.silverpenny )
}
