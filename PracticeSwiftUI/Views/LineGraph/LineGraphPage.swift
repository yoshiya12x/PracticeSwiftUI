//
//  LineGraphPage.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/30.
//

import SwiftUI

struct LineGraphPage: View {
    var body: some View {
        VStack {
            Text("折れ線グラフ")
            LineGraph()
        }
    }
}

struct LineGraphPage_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphPage()
    }
}
