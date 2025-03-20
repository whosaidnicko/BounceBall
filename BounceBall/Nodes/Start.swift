
import SpriteKit

final class Start: SKSpriteNode {
    
    static func getStart(_ level: LevelModel) -> Start {
        let start = Start(imageNamed: "start")
        start.name = "start"
        start.setScale(0.5)
        start.zPosition = NodeZPosition.start.rawValue
        start.position = level.startPosition
        
        switch level.startDirection {
        case .up:
            start.zRotation = .pi / 1
        case .down:
            break
        case .left:
            start.zRotation = .pi / -2
        case .right:
            start.zRotation = .pi / 2
        }
        return start
    }
}
