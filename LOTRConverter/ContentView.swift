import SwiftUI

struct ContentView: View {
    
    @State var showSelectCurrency = false
    @State var  showExchangeInfo = false
    
    @State var leftAmount = ""
    @State var rightAmount = ""
   
    
    @State var topcurrency : Currency = .silverPiece
    @State var bottomcurrency : Currency = .goldPiece
    
    var body: some View {
        ZStack{
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                
                Text("LOTR Converter")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                HStack{
                    VStack{
                        HStack{
                            Image(topcurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                            
                            Text(topcurrency.name)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack{
                        HStack{
                            Text(bottomcurrency.name)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                            Image(bottomcurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                            
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                   
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(Capsule())
                
                Spacer()
                
                HStack{
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                        
                    }label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo){
                        ExchangeInfoView()
                    }
                    .sheet(isPresented: $showSelectCurrency){
                        SelectCurrencyView(topCurrency: $topcurrency, bottomCurrency: $bottomcurrency)
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
