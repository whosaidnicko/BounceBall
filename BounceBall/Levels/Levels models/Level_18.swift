
import Foundation

let level_18 = LevelModel(
    id: 18,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.18, y: screen.height * 0.55),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.3),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.3, y: screen.height * 0.2),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.2),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
            rotation: .hor),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.2),
    startDirection: .down
)
