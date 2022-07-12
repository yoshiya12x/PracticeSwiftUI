//
//  LineGraphPage2.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/07/12.
//

import SwiftUI

struct LineGraphPage2: View {
    var body: some View {
        VStack {
            Text("折れ線グラフ Y軸左")
            LineGraph2()
        }
    }
}

struct LineGraphPage2_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphPage()
    }
}
