
import Foundation

let level_13 = LevelModel(
    id: 13,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.5),
            rotation: .ver),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.5),
            rotation: .ver)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.5),
    startDirection: .left,
    text: .init(
        text: "Activated",
        size: 28,
        textPosition: .init(x: screen.width * 0.6, y: screen.height * 0.65),
        rotateDegree: -0.08
    )
)
