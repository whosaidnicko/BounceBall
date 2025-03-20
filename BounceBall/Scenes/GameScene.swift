
import SpriteKit
import GameplayKit
import SwiftUI

class GameScene: SKScene {
    var vm = ViewModel()
    let haptics = HapticGenerator.shared
    
    var ball: Ball!
    var level: LevelModel!
    var isStarted = false
    
    public init(vm: ViewModel) {
        self.vm = vm
        self.level = vm.currentLevel
        haptics.prepareHaptics()
        super.init(size: screen)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        self.size = frame.size
        physicsWorld.gravity = .zero
        physicsWorld.contactDelegate = self
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        physicsBody?.categoryBitMask = BitMasks.frame.rawValue
        physicsBody?.contactTestBitMask = BitMasks.ball.rawValue
        setupScene()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let node = self.atPoint(touch.location(in: self))
        
        
        if node.name == "plank" {
            guard let node = node as? Plank, node.type != .pStat else { return }
            haptics.generator(intensity: 1, sharpness: 0.1)
            node.rotate()
        }
        
        if node.name == "start" {
            guard !isStarted else { return }
            move()
        }
    }
    
    private func move() {
        playSound(.click)
        haptics.generator(intensity: 1, sharpness: 1)
        self.isStarted = true
        switch level.startDirection {
        case .up:
            ball.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 8))
        case .down:
            ball.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -8))
        case .left:
            ball.physicsBody?.applyImpulse(CGVector(dx: -8, dy: 0))
        case .right:
            ball.physicsBody?.applyImpulse(CGVector(dx: 8, dy: 0))
        }
    }
    private func setupScene() {
        let back = SKSpriteNode(imageNamed: "back")
        back.zPosition = NodeZPosition.background.rawValue
        back.position = .init(x: frame.midX, y: frame.midY)
        addChild(back)
        
        let backColor = SKSpriteNode(color: .playPinkLight, size: screen)
        backColor.alpha = 0.4
        backColor.zPosition = NodeZPosition.backgroundColor.rawValue
        backColor.position = .init(x: frame.midX, y: frame.midY)
        addChild(backColor)

        self.level.planks.forEach {
            let plank = Plank.getPlank($0)
            plank.rotation = $0.rotation
            plank.type = $0.type
            addChild(plank)
        }
        
        let start = Start.getStart(level)
        addChild(start)

        ball = Ball.getBall(level.startPosition)
        addChild(ball)
        
        let finish = Finish.getFinish(level.finishPosition)
        addChild(finish)
        
        guard let text = level.text else { return }
        let textHint = SKLabelNode(text: text.text)
        textHint.position = level.text?.textPosition ?? .zero
        textHint.fontName = LocalFont.regular.rawValue
        textHint.fontSize = level.text?.size ?? 0
        textHint.numberOfLines = 2
        textHint.lineBreakMode = .byWordWrapping
        textHint.zRotation = .pi * (level.text?.rotateDegree ?? 0)
        addChild(textHint)
        
        
    }
    private func shakeScene() {
        playSound(.beat)
        haptics.generator(intensity: 0.7, sharpness: 0.2)
        let right = SKAction.move(by: CGVector(dx: 2, dy: 0), duration: 0.05)
        let left = SKAction.move(by: CGVector(dx: -4, dy: 0), duration: 0.05)
        let back = SKAction.move(by: CGVector(dx: 2, dy: 0), duration: 0.05)
        let allAction = SKAction.sequence([
            right,
            left,
            back
        ])
        
        self.children.forEach {
            $0.run(allAction)
        }
    }
    private func playSound(_ type: SoundType) {
        guard vm.soundOn == true else { return }
        let sound = SKAction.playSoundFileNamed(type.rawValue, waitForCompletion: true)
            scene?.run(sound)
    }
    private func didWin() {
        playSound(.finish)
        let stop = SKAction.run {
            self.ball.physicsBody?.isDynamic = false
        }
        let move = SKAction.move(to: self.level.finishPosition, duration: 0.1)
        let haptic = SKAction.run {
            self.haptics.simpleGenerator(.success)
        }
        let wait = SKAction.wait(forDuration: 0.4)
        let popover = SKAction.run {
            self.vm.nextLevelAvailable()
            self.vm.winOrLose(true)
        }
        let all = SKAction.sequence([stop, move, haptic, wait, popover])
        self.ball.run(all)
    }
    private func didLose() {
        playSound(.out)
        let haptic = SKAction.run {
            self.haptics.simpleGenerator(.error)
        }
        let wait = SKAction.wait(forDuration: 0.4)
        let popover = SKAction.run {
            self.vm.winOrLose(false)
        }
        let all = SKAction.sequence([haptic, wait, popover])
        run(all)
    }
    private func removePlank(_ node: SKNode) {
        let fade = SKAction.fadeOut(withDuration: 0.2)
        let action = SKAction.run {
            node.removeFromParent()
        }
        let all = SKAction.sequence([fade, action])
        node.run(all)
    }
    private func replacePlank(_ node: SKNode) {
        if let node = node as? Plank {
            let newNode = Plank.getPlank(.init(type: .pDef, position: node.position, rotation: node.rotation))
            let wait = SKAction.wait(forDuration: 0.1)
            let action = SKAction.run {
                node.removeFromParent()
                self.addChild(newNode)
            }
            let all = SKAction.sequence([wait, action])
            run(all)
        }
    }

}

extension GameScene: SKPhysicsContactDelegate {
    func didBegin(_ contact: SKPhysicsContact) {

        let contacts: BitMasks = [contact.bodyA.mask, contact.bodyB.mask]
        
        switch contacts {
        case [.ball, .frame]:
            didLose()
        case [.plankDefault, .ball]:
            shakeScene()
        case [.plankStat, .ball]:
            shakeScene()
        case [.finish, .ball]:
            didWin()
        case [.plankDestr, .ball]:
            shakeScene()
            if let node = contact.bodyA.node as? Plank {
                removePlank(node)
            } else if let node = contact.bodyB.node as? Plank {
                removePlank(node)
            }
        case [.plankTransp, .ball]:
            shakeScene()
            if let node = contact.bodyA.node as? Plank {
                replacePlank(node)
            } else if let node = contact.bodyB.node as? Plank {
                replacePlank(node)
            }
        default:
            preconditionFailure("Not determine collision")
        }
    }
    
    func didEnd(_ contact: SKPhysicsContact) {}
}


