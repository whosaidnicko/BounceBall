
import Foundation

let level_1 = LevelModel(
    id: 1,
    isActive: true,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .midRight)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
    finishPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.24),
    startDirection: .down,
    text: .init(
        text: "Tap",
        size: 40,
        textPosition: .init(x: screen.width * 0.87, y: screen.height * 0.1),
        rotateDegree: 0.14
    )
)
