
import Foundation

let level_5 = LevelModel(
    id: 5,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width / 2 - 40, y: screen.height / 2),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .midLeft)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.8),
    startDirection: .up
)
