
import SpriteKit

final class Plank: SKSpriteNode {
    
    var rotation: PlankRotation = .hor
    var type: PlankType = .pDef
    
    static func getPlank(_ model: PlankModel) -> Plank {
        let plank = Plank(imageNamed: model.type.rawValue)
        plank.name = "plank"
        plank.zPosition = NodeZPosition.plank.rawValue
        plank.size = .init(width: 84, height: 84)
        plank.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 84, height: 1))
        
        plank.physicsBody?.friction = 0
        plank.physicsBody?.isDynamic = false
        
        switch model.type {
        case .pDef:
            plank.physicsBody?.categoryBitMask = BitMasks.plankDefault.rawValue
        case .pDestr:
            plank.physicsBody?.categoryBitMask = BitMasks.plankDestr.rawValue
        case .pStat:
            plank.physicsBody?.categoryBitMask = BitMasks.plankStat.rawValue
        case .pTransp:
            plank.physicsBody?.categoryBitMask = BitMasks.plankTransp.rawValue
            
        }
        
        plank.physicsBody?.contactTestBitMask = BitMasks.ball.rawValue

        plank.zRotation = rotationsFloat[model.rotation] ?? .pi
        plank.position = model.position

        return plank
    }
    
    public func rotate() {
        switch rotation {
        case .hor:
            self.zRotation = rotationsFloat[.midLeft] ?? .pi
            self.rotation = .midLeft
        case .midLeft:
            self.zRotation = rotationsFloat[.ver] ?? .pi
            self.rotation = .ver
        case .ver:
            self.zRotation = rotationsFloat[.midRight] ?? .pi
            self.rotation = .midRight
        case .midRight:
            self.zRotation = rotationsFloat[.hor] ?? .pi
            self.rotation = .hor
        }
    }
}

