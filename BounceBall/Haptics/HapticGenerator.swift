
import SwiftUI
import CoreHaptics

final class HapticGenerator: ObservableObject {
    @Published var engine: CHHapticEngine?
    static let shared = HapticGenerator()
    private init () {}
    
    private let generator = UINotificationFeedbackGenerator()
    
    func simpleGenerator(_ type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
    func generator(intensity: Float, sharpness: Float) {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        var events = [CHHapticEvent]()
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: intensity)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: sharpness)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        events.append(event)

        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play pattern: \(error.localizedDescription).")
        }
    }
    
    func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        DispatchQueue.main.async {
            do {
                self.engine = try CHHapticEngine()
                try self.engine?.start()
            } catch {
                print("There was an error creating the engine: \(error.localizedDescription)")
            }
        }
    }
}
