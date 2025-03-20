
import SpriteKit

struct BitMasks: OptionSet {
    let rawValue: UInt32
    
    static let ball = BitMasks(rawValue: 0x1 << 0)
    static let finish = BitMasks(rawValue: 0x1 << 1)
    static let plankDefault = BitMasks(rawValue: 0x1 << 2)
    static let plankDestr = BitMasks(rawValue: 0x1 << 3)
    static let plankStat = BitMasks(rawValue: 0x1 << 4)
    static let plankTransp = BitMasks(rawValue: 0x1 << 5)
    static let frame = BitMasks(rawValue: 0x1 << 6)
    
}

extension SKPhysicsBody {
    var mask: BitMasks {
        get {
            return BitMasks(rawValue: self.categoryBitMask)
        }
        
        set {
            self.categoryBitMask = newValue.rawValue
        }
    }
}
