//
//  CAnimationRootVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 9/18/18.
//  Copyright © 2018 Pedro Ontiveros. All rights reserved.
//

import UIKit

class CAnimationRootVC: RootTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Animation Root"
        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override
    func show(_ vc: UIViewController, sender: Any?) {
        super.viewDidLoad()
        
        self.items.removeAll()
        self.items["Gifts Animated"] = "openGiftAnimatedVC";
        DispatchQueue.main.async {
            self.table.reloadData();
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using rsegue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
}
