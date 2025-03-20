
import Foundation

let level_10 = LevelModel(
    id: 10,
    isActive: false,
    planks: [
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
            rotation: .midRight),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.84),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.2),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.5, y: screen.height * 0.5),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.5),
    startDirection: .down
)
