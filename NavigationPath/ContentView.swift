//
//  ContentView.swift
//  NavigationPath
//
//  Created by 112751 on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Trading")
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Trading")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
