//
//  TouchIDVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 7/22/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit
import LocalAuthentication

class TouchIDVC: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Touch ID"
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

    @IBAction func onTouchIdButton(sender:AnyObject) {
        self.authenticateUser()
    }
    
    func authenticateUser() {
        let context = LAContext()
        var error: NSError?
        let reasonString = "Authentication is needed to access your notes."
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reasonString, reply: {(success: Bool, error: Error?) -> Void in
                if (error != nil) {
                    self.showMessageWith(title: "ERROR", message: "ERROR validating the user")
                } else {
                    self.showMessageWith(title: "SUCCESS", message: "the user has been authenticated.")
                    
                }
            })
        } else {
            self.showMessageWith(title: "ERROR", message: "ERROR device doesn't support that func.")
        }
    }
    
    func showMessageWith(title: String, message: String) {
        let alert  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Accept", style: .default, handler: nil)
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    }
}
