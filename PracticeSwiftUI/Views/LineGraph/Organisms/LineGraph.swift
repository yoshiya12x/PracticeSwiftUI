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
            Chart(items) {
                LineMark(
                    x: .value("Month", $0.date),
                    y: .value("Views", $0.views),
                    series: .value("Service", $0.name)
                )
                .foregroundStyle(by: .value("Service", $0.name))
            }
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
