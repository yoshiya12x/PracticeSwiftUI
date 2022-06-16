//
//  ContentView.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/16.
//

import SwiftUI

struct ContentView: View {
    private let items = ["1st", "2nd", "3rd", "4th", "5th"]

    var body: some View {
        TabView {
             ForEach(items, id: \.self) { item in
                 Text(item)
             }
         }
         .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
