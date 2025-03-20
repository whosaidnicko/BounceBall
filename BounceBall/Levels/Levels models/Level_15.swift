
import Foundation

let level_15 = LevelModel(
    id: 15,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.19, y: screen.height * 0.58),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .hor),
        PlankModel(
            type: .pTransp,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.5),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
            rotation: .midRight),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .ver)
    ],
    startPosition: CGPoint(x: screen.width * 0.5, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.2),
    startDirection: .up
)
