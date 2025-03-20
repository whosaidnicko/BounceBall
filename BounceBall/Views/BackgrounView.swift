
import SwiftUI

struct BackgrounView: View {
    
    var body: some View {
        ZStack {
            mainGradient
            Image("back")
                .resizable()
                .scaledToFill()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgrounView()
}

