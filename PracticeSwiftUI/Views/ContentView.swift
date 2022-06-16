//
//  ContentView.swift
//  PracticeSwiftUI
//
//  Created by 前田　欣耶　 on 2022/06/16.
//

import SwiftUI

struct ContentView: View {
    private let items = generateSampleList()

    var body: some View {
        TabView {
             ForEach(items, id: \.self) { item in
                 Text(item.title)
                     .tabItem {
                         Image(systemName: item.imageSystemName)
                     }
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
