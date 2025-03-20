
import SwiftUI

struct HomeDecor: View {
    var body: some View {
        VStack {
            Image("homeBall")
                .resizable()
                .scaledToFit()
                .frame(height: screen.height * 0.4)

            Spacer()
            
            HStack {
                Image("homeFinish")
                    .resizable()
                    .scaledToFit()
                    .frame(height: screen.height * 0.4)
                
                Spacer()
                
                Image("homeStart")
                    .resizable()
                    .scaledToFit()
                    .frame(height: screen.height * 0.4)
            }
        }
        .padding(.top, 16)
        .padding(.horizontal, screen.width * (disp ? 0.15 : 0.04))
        .overlay {
            Image("homeTile")
                .resizable()
                .scaledToFit()
                .frame(height: screen.height * 0.3)
                .offset(x: screen.height * 0.45, y: -26)
                .rotationEffect(.degrees(6))
        }
    }
}

#Preview {
    HomeDecor()
}
