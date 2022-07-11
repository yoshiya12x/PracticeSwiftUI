//
//  ServiceItem.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/30.
//

import Foundation
import SwiftUI

struct ServiceItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    let views: Int
    let category: String
    let date: Date

    func generateColor() -> Color{
        if name == "ServiceA" { return Color.red }
        if name == "ServiceB" { return Color.cyan }
        if name == "ServiceC" { return Color.purple }
        return Color.gray
    }
}

func generateServiceItem() -> [ServiceItem] {
    let calendar = Calendar.autoupdatingCurrent
    return [
        ServiceItem(name: "ServiceA", views: 1500, category: "CategoryA", date: calendar.date(from: DateComponents(year: 2020, month: 1))!),
        ServiceItem(name: "ServiceA", views: 500, category: "CategoryB", date: calendar.date(from: DateComponents(year: 2020, month: 2))!),
        ServiceItem(name: "ServiceA", views: 1500, category: "CategoryC", date: calendar.date(from: DateComponents(year: 2020, month: 3))!),
        ServiceItem(name: "ServiceA", views: 4500, category: "CategoryD", date: calendar.date(from: DateComponents(year: 2020, month: 4))!),
        ServiceItem(name: "ServiceB", views: 500, category: "CategoryA", date: calendar.date(from: DateComponents(year: 2020, month: 1))!),
        ServiceItem(name: "ServiceB", views: 1500, category: "CategoryB", date: calendar.date(from: DateComponents(year: 2020, month: 2))!),
        ServiceItem(name: "ServiceB", views: 2500, category: "CategoryC", date: calendar.date(from: DateComponents(year: 2020, month: 3))!),
        ServiceItem(name: "ServiceB", views: 3000, category: "CategoryD", date: calendar.date(from: DateComponents(year: 2020, month: 4))!),
        ServiceItem(name: "ServiceC", views: 1500, category: "CategoryA", date: calendar.date(from: DateComponents(year: 2020, month: 1))!),
        ServiceItem(name: "ServiceC", views: 100, category: "CategoryB", date: calendar.date(from: DateComponents(year: 2020, month: 2))!),
        ServiceItem(name: "ServiceC", views: 50, category: "CategoryC", date: calendar.date(from: DateComponents(year: 2020, month: 3))!),
        ServiceItem(name: "ServiceC", views: 500, category: "CategoryD", date: calendar.date(from: DateComponents(year: 2020, month: 4))!),
    ]
}
