//
//  SecondView.swift
//  NavigationPath
//
//  Created by 112751 on 2023/10/17.
//

import SwiftUI

struct SecondView: View {
    @Binding var shouldPopToRootView: Bool
    var body: some View {
        VStack {
            Text("SecondView")
            Button(action: {
                shouldPopToRootView.toggle()
            }, label: {
                Text("Back to the RootView")
            })
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(shouldPopToRootView: .constant(true))
    }
}
