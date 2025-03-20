
import Foundation

let level_14 = LevelModel(
    id: 14,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.5, y:  screen.height * 0.2),
    startDirection: .up
)
