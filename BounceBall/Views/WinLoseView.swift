
import SwiftUI

struct WinLoseView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var vm: ViewModel
    
    @State private var didTapIsActive = false
    
    var body: some View {
        VStack(spacing: 24) {
            Text(vm.winOrLose == .win ? "Great!" : "Oops")
                .localFont(name: .regular, size: 52)
                .shadow(color: .black.opacity(0.12), radius: 1, x: 4, y: 4)
                .foregroundStyle(.white)
            
            HStack(spacing: 18) {
                ButtonView(
                    colorStyle: .gray,
                    buttonSize: .init(width: 60, height: 60),
                    padding: 0
                ) {
                    Image("home")
                        .setImgSize()
                } action: {
                    vm.showWinLoseView = false
                    dismiss()
                }
                
                if vm.winOrLose == .win && vm.currentLevel.id < vm.allLevelsStore.count {
                        ButtonView(
                            colorStyle: .green,
                            buttonSize: .init(width: 60, height: 60),
                            padding: 0
                        ) {
                            Image("arrowRight")
                                .setImgSize()
                        } action: {
                            guard !didTapIsActive else { return }
                            didTapIsActive = true
                            vm.getNextLevel()
                        }
                } else {
                    ButtonView(
                        colorStyle: .red,
                        buttonSize: .init(width: 60, height: 60),
                        padding: 0
                    ) {
                        Image("arrowCircle")
                            .setImgSize()
                    } action: {
                        guard !didTapIsActive else { return }
                        didTapIsActive = true
                        vm.restart()
                    }
                }
            }
        }
        .padding(.bottom, 24)
        .padding(.horizontal, 80)
        .background {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .fill(yellowGradient)
                RoundedRectangle(cornerRadius: 40)
                    .stroke(lineWidth: 6)
                    .fill(.yellowLight)
            }
        }
    }
}

#Preview {
    WinLoseView()
        .environmentObject(ViewModel())
}
