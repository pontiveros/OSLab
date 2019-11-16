//
//  WKWebViewController.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 6/20/18.
//  Copyright © 2018 Pedro Ontiveros. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var wkWebView:WKWebView! // put always weak when you mapping from storeyboard or xib
    
    let sumScr = "func sume(var a, var b) { return a + b;}"
    let alert  = "alert('Hello Pedro Ontiveros!');"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blue
        
        self.title = "Express"
        
        self.wkWebView.uiDelegate = self
        let url = URL(string: "https://mobiledemo.jebbit.com/ujn1xj20")
        let request = URLRequest(url: url!)
        self.wkWebView.load(request)
        
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(runJavaScriptCode))
        self.navigationItem.rightBarButtonItem = button
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func runJavaScriptCode() {
        print("This is a message for debug info.")
        self.wkWebView.evaluateJavaScript(alert, completionHandler: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: WKUIDelegate, implementation of the deleages
//    func webView(webView:WKWebView, runJavaScriptAlertPanelWithMessage: String, initiatedByFrame: WKFrameInfo, completionHandler: () -> Void) {
//
//    }
}
