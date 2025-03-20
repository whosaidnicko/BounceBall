
import Foundation

let level_4 = LevelModel(
    id: 4,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2, y: screen.height * 0.2),
            rotation: .midLeft),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2, y: screen.height * 0.8),
            rotation: .midLeft)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.2),
    startDirection: .up
)
