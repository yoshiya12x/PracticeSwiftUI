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
    @State private var circleColor: Color?
    @State private var circlesCount = 0
    @State private var isTappedToyCircle = false

    var body: some View {
        VStack {
            if isTappedToyCircle {
                Text("Tapped")
            }
            if circleColor != nil {
                HStack {
                    ForEach((1...circlesCount), id: \.self) { num in
                        ToyCircle(backgroundColor: circleColor!, isTapped: $isTappedToyCircle)
                    }
                }
                .animation(.default.speed(0.7), value: circlesCount)
            }
            HStack {
                ToyButton(title: "Change") { changeBackgroundColor() }
                ToyButton(title: "Show") {
                    if circlesCount == 0 {
                        circlesCount = 1
                    }
                    circleColor = backgroundColors[backgroundColorsIndex]
                    changeBackgroundColor()
                }
                ToyButton(title: "Increase") { circlesCount += 1 }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(backgroundColors[backgroundColorsIndex])
        // iOS15以降はvalueを指定することが推奨されている
        .animation(.default.speed(0.5), value: backgroundColorsIndex)
    }
    
    private func changeBackgroundColor() {
        if backgroundColorsIndex == backgroundColors.count - 1 {
            backgroundColorsIndex = 0
        } else {
            backgroundColorsIndex += 1
        }
    }
}

struct ToyPage_Previews: PreviewProvider {
    static var previews: some View {
        ToyPage()
    }
}
