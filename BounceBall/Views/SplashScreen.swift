
import SwiftUI

struct SplashScreen: View {
    @State var isInit: Bool = false
    
    var body: some View {
        ZStack {
            BackgrounView()
            VStack {
                Spacer()
                
                Text("Loading...")
                    .localFont(name: .regular, size: 32)
                    .foregroundStyle(.white)
                    .scaleEffect(isInit ? 1.1 : 1)
                    .animation(.easeIn(duration: 1).repeatForever(), value: isInit)
            }
        }
        .overlay {
            HomeDecor()
        }
        .onAppear{
            isInit = true
        }
    }
}

#Preview {
    SplashScreen()
}
