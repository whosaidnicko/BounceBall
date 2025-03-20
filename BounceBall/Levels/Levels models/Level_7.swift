
import Foundation

let level_7 = LevelModel(
    id: 7,
    isActive: false,
    planks: [
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .midLeft),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.5),
            rotation: .midRight),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.5),
            rotation: .ver),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.8),
    finishPosition: CGPoint(x: screen.width * 0.8, y:  screen.height * 0.8),
    startDirection: .right,
    text: .init(
        text: "Destructible",
        size: 40,
        textPosition: .init(x: screen.width * 0.18, y: screen.height * 0.08),
        rotateDegree: -0.07
    )
)
