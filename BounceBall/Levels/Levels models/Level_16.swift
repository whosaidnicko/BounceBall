
import Foundation

let level_16 = LevelModel(
    id: 16,
    isActive: false,
    planks: [
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.55),
            rotation: .midRight),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.45),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
            rotation: .ver),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.16),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.34, y: screen.height * 0.2),
            rotation: .ver)
    ],
    startPosition: CGPoint(x: screen.width * 0.4, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.2),
    startDirection: .right
)
