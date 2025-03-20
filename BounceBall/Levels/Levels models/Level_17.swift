
import Foundation

let level_17 = LevelModel(
    id: 17,
    isActive: false,
    planks: [
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.14, y: screen.height * 0.5),
            rotation: .ver),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.42, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.7, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.7, y: screen.height * 0.45),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
            rotation: .ver)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.5),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.2),
    startDirection: .right
)
