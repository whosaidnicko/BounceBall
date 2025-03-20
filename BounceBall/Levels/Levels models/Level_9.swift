
import Foundation

let level_9 = LevelModel(
    id: 9,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.55),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.6),
            rotation: .hor),
        PlankModel(
            type: .pDestr,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.4),
            rotation: .hor),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
            rotation: .hor)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.7),
    finishPosition: CGPoint(x: screen.width * 0.5, y:  screen.height * 0.8),
    startDirection: .down,
    text: .init(
        text: "You always can rotate\nthe planks",
        size: 28,
        textPosition: .init(x: screen.width * 0.25, y: screen.height * 0.4),
        rotateDegree: 0.1
    )
)
