
import SwiftUI
import SpriteKit

enum WinOrLose {
    case win, lose
}

final class ViewModel: ObservableObject {
    
    init() {
        maxLevelIndex = userDefaults.integer(forKey: "maxLevel")
        soundOn = userDefaults.object(forKey: "soundOn") == nil ? true : userDefaults.bool(forKey: "soundOn")
        updateAllLevelsByMax()
        currentLevel = allLevels[maxLevelIndex]
    }
    
    @Published var allLevelsStore: [LevelModel] = allLevels
    @Published var currentLevel: LevelModel = allLevels[0]
    @Published var showWinLoseView: Bool = false
    @Published var winOrLose: WinOrLose = .win
    @Published var soundOn = true
    {
        didSet {
            userDefaults.set(soundOn, forKey: "soundOn")
        }
    }
    
    var maxLevelIndex: Int = 0
    {
        didSet {
            userDefaults.set(maxLevelIndex, forKey: "maxLevel")
        }
    }
    
    var currentScene: SKScene?
    
    private func updateAllLevelsByMax() {
        for i in 0...maxLevelIndex {
            allLevelsStore[i].isActive = true
        }
    }

    func winOrLose(_ status: Bool) {
        switch status {
        case true:
            winOrLose = .win
        case false:
            winOrLose = .lose
        }
        showWinLoseView = true
    }
  
    func restart() {
        showWinLoseView = false
        let newScene = GameScene(vm: self)
        newScene.scaleMode = .aspectFill
        currentScene?.view?.presentScene(newScene, transition: sceneTransition)
        currentScene = newScene
    }
    
    func getScene() -> SKScene {
        let newScene = GameScene(vm: self)
        newScene.scaleMode = .aspectFill
        newScene.name = "init scene"
        newScene.view?.ignoresSiblingOrder = true
        newScene.view?.showsFPS = true
        newScene.view?.showsNodeCount = true
        if currentScene == nil {
            currentScene = newScene
        }
        return newScene
    }
    
    func getNextLevel() {
        guard currentLevel.id < allLevelsStore.count else {
            showWinLoseView = false
            tryAgain()
            return
        }
        self.showWinLoseView = false
        self.currentLevel = allLevelsStore[currentLevel.id]
        let newScene = GameScene(vm: self)
        newScene.scaleMode = .aspectFill
        currentScene?.view?.presentScene(newScene, transition: sceneTransition)
        currentScene = newScene
    }
    
    func tryAgain() {
        showWinLoseView = false
        let newScene = GameScene(vm: self)
        newScene.scaleMode = .aspectFill
        currentScene?.view?.presentScene(newScene, transition: sceneTransition)
        currentScene = newScene
    }
    
    func nextLevelAvailable() {
        guard maxLevelIndex == currentLevel.id - 1 else { return }
        guard maxLevelIndex + 1 < allLevelsStore.count else {
            return
        }
        maxLevelIndex += 1
        updateAllLevelsByMax()
    }
}
