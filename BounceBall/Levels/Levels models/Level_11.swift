
import Foundation

let level_11 = LevelModel(
    id: 11,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.5),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.8),
            rotation: .midRight),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
    finishPosition: CGPoint(x: screen.width * 0.5, y:  screen.height * 0.5),
    startDirection: .down
)
