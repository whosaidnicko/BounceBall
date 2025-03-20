
import Foundation

let level_22 = LevelModel(
    id: 22,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.5),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.5, y: screen.height * 0.5),
    finishPosition: CGPoint(x: screen.width * 0.5, y:  screen.height * 0.2),
    startDirection: .left
)
