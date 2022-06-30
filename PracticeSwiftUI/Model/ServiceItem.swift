//
//  ServiceItem.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/30.
//

import Foundation

struct ServiceItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    let views: Int
    let date: Date
}

func generateServiceItem() -> [ServiceItem] {
    let calendar = Calendar.autoupdatingCurrent
    return [
        ServiceItem(name: "ServiceA", views: 1500, date: calendar.date(from: DateComponents(year: 2020, month: 1))!),
        ServiceItem(name: "ServiceA", views: 500, date: calendar.date(from: DateComponents(year: 2020, month: 2))!),
        ServiceItem(name: "ServiceA", views: 1500, date: calendar.date(from: DateComponents(year: 2020, month: 3))!),
        ServiceItem(name: "ServiceA", views: 4500, date: calendar.date(from: DateComponents(year: 2020, month: 4))!),
        ServiceItem(name: "ServiceB", views: 500, date: calendar.date(from: DateComponents(year: 2020, month: 1))!),
        ServiceItem(name: "ServiceB", views: 1500, date: calendar.date(from: DateComponents(year: 2020, month: 2))!),
        ServiceItem(name: "ServiceB", views: 2500, date: calendar.date(from: DateComponents(year: 2020, month: 3))!),
        ServiceItem(name: "ServiceB", views: 3500, date: calendar.date(from: DateComponents(year: 2020, month: 4))!),
        ServiceItem(name: "ServiceC", views: 1500, date: calendar.date(from: DateComponents(year: 2020, month: 1))!),
        ServiceItem(name: "ServiceC", views: 100, date: calendar.date(from: DateComponents(year: 2020, month: 2))!),
        ServiceItem(name: "ServiceC", views: 50, date: calendar.date(from: DateComponents(year: 2020, month: 3))!),
        ServiceItem(name: "ServiceC", views: 500, date: calendar.date(from: DateComponents(year: 2020, month: 4))!),
    ]
}
