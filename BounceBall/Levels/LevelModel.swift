
import Foundation

enum PlankRotation {
    case hor, ver, midRight, midLeft
}

enum Direction {
    case up, down, left, right
}

enum PlankType: String {
    case pDef, pDestr, pStat, pTransp
}

struct LevelModel {
    let id: Int
    var isActive: Bool
    let planks: [PlankModel]
    let startPosition: CGPoint
    let finishPosition: CGPoint
    let startDirection: Direction

    var text: TextModel?
}

struct PlankModel {
    let type: PlankType
    let position: CGPoint
    var rotation: PlankRotation
}

struct TextModel {
    let text: String
    let size: CGFloat
    let textPosition: CGPoint
    let rotateDegree: CGFloat
}



