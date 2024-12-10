import SwiftUI

struct ContentView: View {
    @State var  showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                            
                            Text("Silver Piece")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
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
                            Text("Silver Penny")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                            
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
                }
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
