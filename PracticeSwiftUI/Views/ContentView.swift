//
//  ContentView.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LineGraphPage()
                 .padding(16)
                 .tabItem {
                     Image(systemName: "1.circle.fill")
                 }
            BarGraphPage()
                 .padding(16)
                 .tabItem {
                     Image(systemName: "2.circle.fill")
                 }
            ToyPage()
                .tabItem{
                    Image(systemName: "gamecontroller")
                }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
