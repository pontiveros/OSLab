//
//  PassVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 9/12/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit

class PassVC: UIViewController {

    let template3C = "{\"templateId\":\"55g2nqeowvbklmvhungznlwdme\",\"barcodeMessage\":{\"data\":\"123456789\",\"altText\":\"ID:123456789\"},\"headerFields\":[{\"key\":\"hField1\",\"label\":\"Reward\",\"value\":\"N/A\",\"align\":\"PKTextAlignmentLeft\"},{\"key\":\"hField2\",\"label\":\"Points\",\"value\":\"N/A\",\"align\":\"PKTextAlignmentLeft\"}],\"secondaryFields\":[{\"key\":\"sField1\",\"label\":\"Member Name\",\"value\":\"!EXPRESS NEXT Member!\",\"align\":\"PKTextAlignmentLeft\"},{\"key\":\"sField2\",\"label\":\"Member ID\",\"value\":\"!000000000000!\",\"align\":\"PKTextAlignmentLeft\"}],\"backFields\":[{\"key\":\"bField1\",\"label\":\"Reward\",\"value\":\"Enter the details of the reward here\",\"align\":\"PKTextAlignmentLeft\"},{\"key\":\"bField2\",\"label\":\"Terms\",\"value\":\"Enter the loyalty or reward terms here, add additional back fields as required\",\"align\":\"PKTextAlignmentLeft\"}],\"tag\":\"loyalty\"}"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Apple Pass"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onGetPass(_ sender: Any) {
        // Create request object.
        var request        = URLRequest(url: URL(string:"https://passcenter.3c.com/pass/template/55g2nqeowvbklmvhungznlwdme")!)
        request.httpMethod = "POST"
        request.addValue("6gr5JALChF7Y3yCRTxyfK2O8SHitw1vN2xxcMQB7", forHTTPHeaderField: "x-api-key")
        request.addValue("application/hal+json", forHTTPHeaderField: "Accept")
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpBody = self.template3C.data(using: .utf8)
        
        let config = URLSessionConfiguration.default
        let comm   = URLSession(configuration: config)
        
        let task = comm.dataTask(with: request, completionHandler: { (data, urlresponse, error) in
            if (error == nil) {
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String : Any]
                    print("RESPONSE is good.")
                } catch let err {
                    print("There were an error in conversion.")
                }
            } else {
                print("Error is cool.")
            }
        })
        task.resume()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
