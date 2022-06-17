//
//  ToyButton.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/17.
//

import SwiftUI

struct ToyButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(title, action: action)
            .buttonStyle(.borderedProminent)
            .tint(.gray)
    }
}

struct ToyButton_Previews: PreviewProvider {
    static var previews: some View {
        ToyButton(title: "title"){}
    }
}
