
import SpriteKit

final class Ball: SKSpriteNode {
    
    static func getBall(_ position: CGPoint) -> Ball {
        let ball = Ball(imageNamed: "ball")
        ball.name = "ball"
        ball.setScale(0.5)
        ball.zPosition = NodeZPosition.ball.rawValue
        
        ball.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 20, height: 20))
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.allowsRotation = false
        
        ball.physicsBody?.categoryBitMask = BitMasks.ball.rawValue
        ball.physicsBody?.collisionBitMask =  BitMasks.plankDefault.rawValue | BitMasks.plankDestr.rawValue | BitMasks.plankStat.rawValue
        ball.physicsBody?.contactTestBitMask = BitMasks.finish.rawValue | BitMasks.plankDefault.rawValue | BitMasks.plankDestr.rawValue | BitMasks.plankStat.rawValue | BitMasks.frame.rawValue | BitMasks.plankTransp.rawValue
        ball.physicsBody?.linearDamping = 0
        ball.physicsBody?.angularDamping = 0
        ball.physicsBody?.friction = 0
        ball.physicsBody?.restitution = 1
        
        ball.position = position
        
        return ball
    }
}
import SwiftUI
extension View {
    func werarepibuplchas() -> some View {
        self.modifier(Liukuiskiyaur())
    }
}
