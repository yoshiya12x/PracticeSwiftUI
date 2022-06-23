//
//  PracticeItem.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/16.
//

import Foundation

struct PracticeItem: Hashable {
    let title: String
    let name: String
    let imageSystemName: String
}

func generateSampleList() -> [PracticeItem] {
    return [
        PracticeItem(title: "1ssst", name: "ファースト", imageSystemName: "1.circle.fill"),
        PracticeItem(title: "2nd", name: "セカンド", imageSystemName: "2.circle.fill"),
        PracticeItem(title: "3rd", name: "サード", imageSystemName: "3.circle.fill"),
        PracticeItem(title: "4th", name: "フォース", imageSystemName: "4.circle.fill"),
        PracticeItem(title: "5th", name: "フィフス", imageSystemName: "5.circle.fill"),
        PracticeItem(title: "6th", name: "シックスス", imageSystemName: "6.circle.fill"),
    ]
}
