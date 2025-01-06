import SwiftUI

struct ContentView: View {
    
    @State var showSelectCurrency = false
    @State var  showExchangeInfo = false
    
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    @FocusState var leftTyping
    @FocusState var rightTyping
    
    @State var leftCurrency : Currency = .silverPiece
    @State var rightCurrency : Currency = .goldPiece
    
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
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                            
                            Text(leftCurrency.name)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                        }
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .focused($leftTyping)
                            .onChange(of: leftAmount) {
                                if leftTyping {
                                    rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                                }
                            }

                           
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack{
                        HStack{
                            Text(rightCurrency.name)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                            Image(rightCurrency.image)
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
                            .focused($rightTyping)
                            .onChange(of: rightAmount) {
                                if rightTyping {
                                    leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
                                }
                            }
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
                        SelectCurrencyView(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
