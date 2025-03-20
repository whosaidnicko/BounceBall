
import Foundation

let level_2 = LevelModel(
    id: 2,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.19, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.82, y: screen.height * 0.2),
            rotation: .midRight)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
    finishPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
    startDirection: .down
)
