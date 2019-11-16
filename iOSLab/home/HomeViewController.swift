//
//  HomeViewController.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 11/15/19.
//  Copyright © 2019 Pedro Ontiveros. All rights reserved.
//

import Foundation
import SwiftUI

@objc
class HomeViewController: NSObject {
    @objc func makeShipDetailsUI(_ name: String) -> UIViewController {
        var details = HomeViewUI()
        return UIHostingController(rootView: details)
    }
}
