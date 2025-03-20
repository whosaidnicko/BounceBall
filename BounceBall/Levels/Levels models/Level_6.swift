
import Foundation

let level_6 = LevelModel(
    id: 6,
    isActive: false,
    planks: [
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.5, y: screen.height * 0.8),
            rotation: .ver),
        PlankModel(
            type: .pStat,
            position: CGPoint(x: screen.width * 0.5 + 20, y: screen.height * 0.45),
            rotation: .midRight),
        PlankModel(
            type: .pDef,
            position: CGPoint(x: screen.width * 0.8, y: screen.height * 0.2),
            rotation: .midRight)
    ],
    startPosition: CGPoint(x: screen.width * 0.2, y: screen.height * 0.2),
    finishPosition: CGPoint(x: screen.width * 0.2, y:  screen.height * 0.5),
    startDirection: .right,
    text: .init(
        text: "Static",
        size: 40,
        textPosition: .init(x: screen.width * 0.6, y: screen.height * 0.3),
        rotateDegree: 0.13
    )
)
