
import Foundation

let level_8 = LevelModel(
    id: 8,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.4),
            rotation: .midLeft),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.6),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.4),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.2),
            rotation: .midLeft),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .midRight)
    ],
    startPosition: CGPoint(x: screen.width * 0.3, y: screen.height * 0.4),
    finishPosition: CGPoint(x: screen.width * 0.6, y:  screen.height * 0.8),
    startDirection: .right
)
