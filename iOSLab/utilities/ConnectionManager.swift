//
//  ConnectionManager.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 9/12/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit

class ConnectionManager: NSObject {
    
    
    func getDataFrom(urlString: String!) -> Void {
//        var request        = URLRequest(url: URL(string:"https://passcenter.3c.com/pass/template/55g2nqeowvbklmvhungznlwdme")!)
//        request.httpMethod = "POST"
//        request.addValue("6gr5JALChF7Y3yCRTxyfK2O8SHitw1vN2xxcMQB7", forHTTPHeaderField: "x-api-key")
//        request.addValue("application/hal+json", forHTTPHeaderField: "Accept")
//        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.httpBody = self.template3C.data(using: .utf8)
//
//        let config = URLSessionConfiguration.default
//        let comm   = URLSession(configuration: config)
//
//        let task = comm.dataTask(with: request, completionHandler: { (data, urlresponse, error) in
//            if (error == nil) {
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String : Any]
//                    print("RESPONSE is good.")
//                } catch let err {
//                    print("There were an error in conversion.")
//                }
//            } else {
//                print("Error is cool.")
//            }
//        })
//        task.resume()
    }
}
