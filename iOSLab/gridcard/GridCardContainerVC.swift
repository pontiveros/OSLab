//
//  GridCardContainerVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 1/8/19.
//  Copyright © 2019 Pedro Ontiveros. All rights reserved.
//

import UIKit

class GridCardContainerVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items:[[String:Any]] = [[String:Any]]()
    
    @IBOutlet weak var tableView: UITableView!;
    
    let cellName = "GridCardCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Grid Card Container";
        self.loadItems()
        
        tableView.register(GridCardViewCell.self, forCellReuseIdentifier: cellName)
        tableView.delegate   = self
        tableView.dataSource = self
    }
    
    func loadItems() {
        self.items.append(["state":"OHIO","type":GridCardType.small])
        self.items.append(["state":"NEW YORK","type":"small"])
        self.items.append(["state":"FLORIDA", "type":"medium"])
        self.items.append(["state":"TEXAS", "type":"medium"])
        self.items.append(["state":"CALIFORNIA", "type":"medium"])
        self.items.append(["state":"WASHINGTON", "type":"medium"])
        self.items.append(["state":"MICHIGAN", "type":"medium"])
        self.items.append(["state":"ILLINOIS", "type":"large"])
        self.items.append(["state":"KENTUCKY", "type":""])
        self.items.append(["state":"TENNESSEE", "type":"medium"])
        self.items.append(["state":"ALABAMA", "type":"medium"])
        self.items.append(["state":"IOWA", "type":"medium"])
        self.items.append(["state":"NEBRASKA", "type":"medium"])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    // MARK: UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        cell.textLabel?.text = self.items[indexPath.row]["state"] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;
    }
    
    // MARK:
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> Void {
        print("User taps on the table view.");
    }
    
}
