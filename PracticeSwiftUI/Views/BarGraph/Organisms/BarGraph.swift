//
//  BarGraph.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/07/01.
//

import SwiftUI
import Charts

struct BarGraph: View {
    private let items = generateServiceItem()
    var body: some View {
        if #available(iOS 16.0, *) {
            Chart(items) {
                BarMark(
                    x: .value("Service", $0.name),
                    y: .value("Views", $0.views)
                )
                .foregroundStyle(by: .value("Category", $0.category))
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph()
    }
}
