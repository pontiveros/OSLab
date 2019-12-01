//
//  HomeViewUI.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 11/15/19.
//  Copyright © 2019 Pedro Ontiveros. All rights reserved.
//

import SwiftUI

struct HomeViewUI: View {
    @available(iOS 13.0.0, *)

    @State private var aAlert = false

    var body: some View {

        VStack {
            NavigationView {
                List(0 ..< 20) { item in
                    VStack {
                        Text("Developer:").font(.title)
                        Text("Pedro Ontiveros").font(.subheadline).foregroundColor(.red)
                        Button(action: {
                            print("You tapped on my button!")
                        }, label: {Text("Tap Me!")})
                    }
                }
                .navigationBarTitle(Text("DEVELOPERS"))
            }
            Spacer()
            Button(action: {
                self.aAlert = true
            }, label: {
                Text("Show Alert")
            })
        }
        
        .alert(isPresented: $aAlert) { () -> Alert in
            Alert(title: Text("SwiftUI Intro"),
                  message: Text("This is the first contact with SwiftUI"),
                  primaryButton: .default(Text("OK"), action: {
                    print("OK tapped")
                  }), secondaryButton: .default(Text("Cancel")))
        }
    }
    
    @available(iOS 13.0.0, *)
    func myAction() {
        print("Check how this is working today!")
    }
}

struct HomeViewUI_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewUI()
    }
}

