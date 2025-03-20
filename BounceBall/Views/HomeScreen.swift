
import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var vm: ViewModel
    @State private var showLevels = false
    @State private var showSettings = false
    @State private var showGame = false
    
    
    var body: some View {
        ZStack {
            BackgrounView()
            VStack {
                Spacer()
                
                if !showLevels && !showSettings {
                    ButtonView(
                        colorStyle: .yellow,
                        buttonSize: .init(width: screen.width * 0.3, height: screen.height * 0.2),
                        cornerRadius: 40
                    ) {
                        Text("Play")
                            .localFont(name: .regular, size: 52)
                    } action: {
                        withAnimation {
                            showLevels = true
                        }
                    }
                }
            }
        }
        .overlay {
            if !showLevels {
                HomeDecor()
            }
        }
        .overlay(alignment: .top) {
            HStack(alignment: .center) {
                ButtonView(colorStyle: .gray, buttonSize: .init(width: 48, height: 48)) {
                    Image(showLevels ? "home" : "settings")
                        .setImgSize()
                } action: {
                    switch showLevels {
                    case true:
                        withAnimation {
                            showLevels = false
                        }
                    case false:
                        withAnimation {
                            showSettings.toggle()
                        }
                    }
                }
                
                Spacer()
                
                ButtonView(colorStyle: vm.soundOn ? .green : .gray, buttonSize:.init(width: 48, height: 48)) {
                    Image(vm.soundOn ? "soundOn" : "soundOff")
                        .setImgSize()
                } action: {
                    vm.soundOn.toggle()
                }
            }
            .padding(.top, 12)
            .padding(.horizontal, screen.width * (disp ? 0.19 : 0.04))
        }
        .overlay {
            if showLevels {
                LevelsScreen() { level in
                    vm.currentLevel = level
                    showGame = true
                }
            }
        }
        .overlay {
            if showSettings {
                SettingsView(showSettings: $showSettings)
                    .padding(.vertical, 32)
            }
        }
        .popover(isPresented: $showGame) {
            GameSceneScreen(scene: vm.getScene())
        }
    }
}

#Preview {
    HomeScreen()
        .environmentObject(ViewModel())
}


