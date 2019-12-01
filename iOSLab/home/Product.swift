//
//  Product.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 11/17/19.
//  Copyright © 2019 Pedro Ontiveros. All rights reserved.
//

import Foundation

public struct Product {
    
    public var code: Int = 0;
    public var name: String = "";
    public var price: Float = 0.0;
    public var status: Int = 0;
    public var imageURL: String = "";
    
    init(code: Int, name: String!, price: Float, status: Int, img: String) {
        self.code     = code
        self.name     = name;
        self.price    = price
        self.status   = status
        self.imageURL = img
    }
}
