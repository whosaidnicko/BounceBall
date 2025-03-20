
import Foundation

let level_20 = LevelModel(
    id: 20,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.6),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.48, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.65, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.65, y: screen.height * 0.6),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.82, y: screen.height * 0.2),
            rotation: .midRight)
    ],
    startPosition: CGPoint(x: screen.width * 0.5, y: screen.height * 0.6),
    finishPosition: CGPoint(x: screen.width * 0.8, y:  screen.height * 0.7),
    startDirection: .down
)
