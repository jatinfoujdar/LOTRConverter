import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
           
                Image("prancingpony")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .position(x: 200, y: 150)
            VStack{
                Text("LOTR Converter")
            }
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    ContentView()
}
