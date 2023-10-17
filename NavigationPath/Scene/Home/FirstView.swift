//
//  FirstView.swift
//  NavigationPath
//
//  Created by 112751 on 2023/10/17.
//

import SwiftUI

struct FirstView: View {
    @State var isOpenSecondView: Bool = false
    @Binding var rootIsActive: Bool
    
    var body: some View {
        VStack {
            Text("FirstView")
            NavigationLink(value: "SecondView") {
                Button(action: {
                    isOpenSecondView.toggle()
                }, label: {
                    Text("Go To SecondView")
                })
            }
            .navigationDestination(isPresented: $isOpenSecondView) {
                SecondView(shouldPopToRootView: $rootIsActive)
            }
        }
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(rootIsActive: .constant(true))
    }
}
