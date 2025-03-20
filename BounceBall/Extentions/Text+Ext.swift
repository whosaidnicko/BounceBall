
import SwiftUI

extension Text {
    public func localFont(
        name: LocalFont,
        size: CGFloat = 18,
        weight: Font.Weight = .regular
    ) -> some View {
        self.font(
            .custom(
                name.rawValue,
                size: size
            )
            .weight(weight)
        )
    }
}
