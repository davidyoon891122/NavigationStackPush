//
//  TradingView.swift
//  NavigationPath
//
//  Created by 112751 on 2023/10/17.
//

import SwiftUI

struct TradingView: View {
    @State var isOpenDetailView: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("TradingView")
                NavigationLink(value: "TradingDetailView") {
                    Button(action: {
                        isOpenDetailView.toggle()
                    }, label: {
                        Text("Go to DetailView")
                    })
                }
                .navigationDestination(isPresented: $isOpenDetailView) {
                    TradingDetailView(isRootActivate: $isOpenDetailView)
                }
            }
        }
    }
}

struct TradingView_Previews: PreviewProvider {
    static var previews: some View {
        TradingView()
    }
}
