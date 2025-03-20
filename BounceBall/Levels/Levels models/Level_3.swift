
import Foundation

let level_3 = LevelModel(
    id: 3,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.18, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2, y: screen.height * 0.8),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.8, y:  screen.height * 0.8),
    startDirection: .up
)
