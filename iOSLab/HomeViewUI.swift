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
    var body: some View {
//        .navigationBarTitle(Text("Home View"))
        VStack {
            Text("Developers").font(.title)
            HStack {
                Text("Hello Pedro Ontiveros")
                Text("iOS Developer!")
            }
            HStack {
                Text("Other Developer")
                Text("Android Developer!")
            }
            HStack {
                Text("Third Party Developer")
                Text("NodeJS Developer!")
            }
            Spacer()
            Button(action: {
                print("Hello this is Pedro Ontiveros")
            }) {
                Text("ClickME!")
            }
        }

    }
    
//    @available(iOS 13.0.0, *)
//    func clickMe(sender: Button<Label: View>) -> Void {
//        print("Puta Madre!")
//    }
}

struct HomeViewUI_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewUI()
    }
}

