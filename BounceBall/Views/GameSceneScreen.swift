
import SwiftUI
import SpriteKit

struct GameSceneScreen: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var vm: ViewModel
    let scene: SKScene
    
    var body: some View {
        SpriteView(scene: scene)
            .ignoresSafeArea()
            .onDisappear {
                vm.currentScene = nil
            }
            .overlay {
                if vm.showWinLoseView {
                    WinLoseView()
                }
            }
            .overlay(alignment: .top) {
                HStack(alignment: .center) {
                    ButtonView(colorStyle: .gray, buttonSize: .init(width: 48, height: 48)) {
                        Image("home")
                            .setImgSize()
                    } action: {
                        dismiss()
                        vm.showWinLoseView = false
                    }
                    
                    Spacer()
                    
                    ButtonView(colorStyle: vm.soundOn ? .green : .gray, buttonSize: .init(width: 48, height: 48)) {
                        Image(vm.soundOn ? "soundOn" : "soundOff")
                            .setImgSize()
                    } action: {
                        vm.soundOn.toggle()
                    }
                }
                .padding(12)
                .ignoresSafeArea()
            }
            .animation(.default, value: vm.showWinLoseView)
    }
}

#Preview {
    GameSceneScreen(scene: ViewModel().getScene())
        .environmentObject(ViewModel())
}

