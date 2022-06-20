//
//  ToyCircle.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/20.
//

import SwiftUI

struct ToyCircle: View {
    var backgroundColor: Color
    @Binding var isTapped: Bool

    var body: some View {
        Circle()
            .fill(selectColor())
            .onTapGesture { withAnimation() { isTapped = true } }
            .animation(.default.speed(0.7), value: isTapped)
    }

    private func selectColor() -> Color {
        if isTapped {
            return Color.gray
        }
        return backgroundColor
    }
}

struct ToyCircle_Previews: PreviewProvider {
    static var previews: some View {
        ToyCircle(backgroundColor: Color.red, isTapped: .constant(false))
    }
}
