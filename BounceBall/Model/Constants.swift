
import SpriteKit
import SwiftUI

let userDefaults = UserDefaults.standard

// MARK: - SIZES

let screen = UIScreen.main.bounds.size
let sceneTransition = SKTransition.crossFade(withDuration: 0.4)
let disp = screen.height / screen.width < 0.5 ? false : true

let rotationsFloat: [PlankRotation: CGFloat] = [
    .hor: .pi / 1,
    .midLeft: .pi / -4,
    .midRight: .pi / 4,
    .ver: .pi / 2
]
