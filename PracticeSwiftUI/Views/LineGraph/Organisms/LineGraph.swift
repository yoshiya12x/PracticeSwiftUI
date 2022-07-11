//
//  LineGraph.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/07/01.
//

import SwiftUI
import Charts

struct LineGraph: View {
    private let items = generateServiceItem()
    var body: some View {
        if #available(iOS 16.0, *) {
            Chart(items) { item in
                LineMark(
                    x: .value("Month", item.date),
                    y: .value("Views", item.views),
                    series: .value("Service", item.name)
                )
                // .foregroundStyle(by: .value("Service", item.name))
                .foregroundStyle(item.generateColor())
            }
            .chartYScale(domain: 0...10000)
            .chartLegend(Visibility.hidden)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct LineGraph_Previews: PreviewProvider {
    static var previews: some View {
        LineGraph()
    }
}
