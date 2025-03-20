
import Foundation

let level_19 = LevelModel(
    id: 19,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.37, y: screen.height * 0.5),
            rotation: .hor),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.4, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.6, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.7, y: screen.height * 0.1),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.82, y: screen.height * 0.5),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
    finishPosition: CGPoint(x: screen.width * 0.8, y:  screen.height * 0.2),
    startDirection: .down
)
