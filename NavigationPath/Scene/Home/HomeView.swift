//
//  HomeView.swift
//  NavigationPath
//
//  Created by 112751 on 2023/10/17.
//

import SwiftUI

struct HomeView: View {
    @State var isOpenFirstView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home")
                NavigationLink(value: "FirstView") {
                    Button(action: {
                        isOpenFirstView.toggle()
                    }, label: {
                        Text("Go to FirstView")
                    })
                }
                .navigationDestination(isPresented: $isOpenFirstView) {
                    FirstView(rootIsActive: $isOpenFirstView)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
