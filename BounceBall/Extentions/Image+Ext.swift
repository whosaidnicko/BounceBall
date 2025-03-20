
import SwiftUI

extension Image {
    func setImgSize() -> some View {
        self
            .resizable()
            .frame(width: 24, height: 24)
            .scaledToFit()
    }
}
