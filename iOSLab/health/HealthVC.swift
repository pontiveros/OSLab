//
//  HealthVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 4/22/19.
//  Copyright © 2019 Pedro Ontiveros. All rights reserved.
//

import UIKit
import HealthKit
import HealthKitUI

let healthKitStore:HKHealthStore = HKHealthStore()

class HealthVC: UIViewController {

    @IBOutlet var label:UILabel!
    
    private var clicks:Int! {
        willSet {
            print("Before setting value for clicks")
        }
        
        didSet {
            print("After setting value for clicks")
        }
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        clicks = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        clicks = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTapAssign(sender: Any) -> Void {
        self.clicks += 1
        self.label.text = "\(self.clicks ?? 0)"
        print("Value of clicks is: \(String(describing: self.clicks)) time/s...")
    }
}
