//
//  ToyPage.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/16.
//

import SwiftUI

struct ToyPage: View {
    private let backgroundColors = [Color.white, Color.red, Color.green, Color.yellow, Color.blue]
    @State private var backgroundColorsIndex = 0

    var body: some View {
        HStack(alignment: .center) {
            Button("Change") {
                if backgroundColorsIndex == backgroundColors.count - 1 {
                    backgroundColorsIndex = 0
                } else {
                    backgroundColorsIndex += 1
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColors[backgroundColorsIndex])
        // iOS15以降はvalueを指定することが推奨されている
        .animation(.default.speed(0.3), value: backgroundColorsIndex)
    }
}

struct ToyPage_Previews: PreviewProvider {
    static var previews: some View {
        ToyPage()
    }
}
