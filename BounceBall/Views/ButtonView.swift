
import SwiftUI

enum ButtonColorStyle {
    case green, gray, yellow, red
}

struct ButtonView<Label: View>: View {
    @EnvironmentObject var vm: ViewModel
    var colorStyle: ButtonColorStyle = .green
    var buttonSize: CGSize = .init(width: 64, height: 64)
    var cornerRadius: CGFloat = 18
    var padding: CGFloat = 16
    
    let label: () -> Label
    let action: () -> ()
    
    private let sound = SoundManager()
    
    var body: some View {
        Button {
            action()
            if vm.soundOn {
                sound.playSound(.click)
            }
        } label: {
            content
        }
        .buttonStyle(GameButtonStyle())
        .padding(padding)
    }
    
    private var content: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundStyle(getGradient())
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(style: .init(lineWidth: 5))
                .foregroundStyle(getBorderColor())
    
            label()
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.25), radius: 1, x: 2, y: 2)
                .scaledToFit()
        }
        .frame(width: buttonSize.width, height: buttonSize.height)
    }
    
    private func getBorderColor() -> Color {
        switch colorStyle {
        case .green:
            return .greenLight
        case .gray:
            return .grayLight
        case .yellow:
            return .yellowLight
        case .red:
            return .redLight
        }
    }
    
    private func getGradient() -> LinearGradient {
        switch colorStyle {
        case .green:
            greenGradient
        case .gray:
            grayGradient
        case .yellow:
            yellowGradient
        case .red:
            redGradient
        }
    }
}
