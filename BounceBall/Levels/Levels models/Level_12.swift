
import Foundation

let level_12 = LevelModel(
    id: 12,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .midRight),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.5),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
            rotation: .midLeft),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.82, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.28, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.35),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.12, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.06),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.74),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.2),
    startDirection: .right
)
