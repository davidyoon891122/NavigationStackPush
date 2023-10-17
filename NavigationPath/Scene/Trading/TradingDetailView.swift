//
//  TradingDetailView.swift
//  NavigationPath
//
//  Created by 112751 on 2023/10/17.
//

import SwiftUI

struct TradingDetailView: View {
    @Binding var isRootActivate: Bool
    
    var body: some View {
        VStack {
            Text("TradingDetailView")
            Button(action: {
                isRootActivate.toggle()
            }, label: {
                Text("back to root")
            })
        }
    }
}

struct TradingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TradingDetailView(isRootActivate: .constant(true))
    }
}
