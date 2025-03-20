
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
    @State private var splashIsDone = false
    
    
    var body: some View {
        ZStack {
            if !splashIsDone {
                SplashScreen()
            } else {
                HomeScreen()
            }
        }
        .werarepibuplchas()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeIn(duration: 1)) {
                    splashIsDone = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
}
