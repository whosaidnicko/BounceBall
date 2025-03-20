
import SwiftUI

struct LevelsScreen: View {
    @EnvironmentObject var vm: ViewModel

    let action: (LevelModel) -> ()
    
    var gridItems: [GridItem] = Array(repeating: .init(.flexible(minimum: 4)), count: 9)
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Choose the Level")
                .localFont(name: .regular, size: 36)
            
            LazyVGrid(columns: gridItems, spacing: 12) {
                ForEach(vm.allLevelsStore, id: \.id) { item in
                    ButtonView(
                        colorStyle: getColorStyle(item),
                        buttonSize: .init(width: 64, height: 64),
                        padding: 0
                    ) {
                        Text(item.id.description)
                            .localFont(name: .regular, size: 40)
                    } action: {
                        action(item)
                    }
                    .disabled(item.isActive == false)
                }
            }
            .padding(.horizontal, screen.width * (disp ? 0.2 : 0.13))
            
            Spacer()
        }
        .localFont(name: .regular)
        .foregroundStyle(.white)
        .padding(.top, 40)
        .navigationBarBackButtonHidden()
        .transition(.opacity)
    }
    
    private func getColorStyle(_ item: LevelModel) -> ButtonColorStyle {
        if vm.currentLevel.id == item.id {
            return .yellow
        } else {
            return item.isActive ? .green : .gray
        }
    }
}

#Preview {
    LevelsScreen() {_ in }
        .environmentObject(ViewModel())
}
