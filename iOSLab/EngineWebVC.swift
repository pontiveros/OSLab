//
//  EngineWebVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 7/23/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit

class EngineWebVC: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Web View"
        // Do any additional setup after loading the view.
        self.webView.allowsInlineMediaPlayback = true;
        self.webView.loadRequest(URLRequest(url: URL(string:"https://mobiledemo.jebbit.com/ujn1xj20")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool {
        return true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Did finish load.")
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("Did start load.")
    }
}
