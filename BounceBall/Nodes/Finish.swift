
import SpriteKit

final class Finish: SKSpriteNode {
    
    static func getFinish(_ position: CGPoint) -> Finish {
        let finish = Finish(imageNamed: "finish")
        finish.name = "finish"
        finish.setScale(0.5)
        finish.zPosition = NodeZPosition.finish.rawValue
        
        finish.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 60, height: 60))
        
        finish.physicsBody?.friction = 0
        finish.physicsBody?.isDynamic = false
 
        finish.physicsBody?.categoryBitMask = BitMasks.finish.rawValue
        finish.physicsBody?.collisionBitMask = BitMasks.ball.rawValue
        finish.physicsBody?.contactTestBitMask = BitMasks.ball.rawValue
        finish.position = position
        
        return finish
    }
}

