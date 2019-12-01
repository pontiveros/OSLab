//
//  ViewController.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 7/22/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit
import DKTabPageViewController

class RootTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items:[String:String] = [String:String]()
    
    @IBOutlet var table: UITableView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "iOS Labs"
        
        // Setting Items
        self.items["Touch ID"]         = "openTouchID"
        self.items["Networking"]       = "openNetworking"
        self.items["Physics Engine"]   = "openPhysicsEngine"
        self.items["Web View"]         = "openWebView"
        self.items["Location Monitor"] = "openLocationMonitor"
        self.items["Apple Pass"]       = "openApplePass"
        self.items["My Profile"]       = "openMyProfile"
        self.items["Dashboard"]        = "openExpDashboard"
        self.items["Twitter App"]      = "openTwitterApp"
        self.items["WKWebView"]        = "openWKWebView"
        self.items["Animations"]       = "openCAnimation"
        self.items["GridCard"]         = "openGridCard"
        self.items["Health Kit"]       = "openHealthKit"
        self.items["Home View"]        = "openHomeView"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let keys = Array(self.items.keys)
        let key  = keys[indexPath.row]
        
        if let command = self.items[key] {
            switch (command) {
                case "openTouchID":         self.openTouchID()
                case "Networking":          self.openTouchID()
                case "openPhysicsEngine":   self.openPhysicsEngine()
                case "openWebView":         self.openWebView()
                case "openLocationMonitor": self.openLocationMonitor()
                case "openApplePass":       self.openApplePass()
                case "openMyProfile":       self.openMyProfile()
                case "openExpDashboard":    self.openExpDashboard()
                case "openTwitterApp":      self.openTwitterApp()
                case "openWKWebView":       self.openWKWebView()
                case "openCAnimation":      self.openCAnimation()
                case "openGridCard":        self.openGridCard()
                case "openHealthKit":       self.openHealthKit()
                case "openHomeView":        self.openHomeView()
                default:
                print("Selected wrong")
            }
        }
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "ItemCell")
        }
        
        let     keys  = Array(self.items.keys)
        let cellTitle = keys[indexPath.row] as String
        
        cell?.textLabel?.text = cellTitle
        return cell!
    }
    
    func openHomeView() {
        let vc = HomeViewController().makeShipDetailsUI("HomeView")
        self.present(vc, animated: true, completion: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openTouchID() {
        let vc = TouchIDVC(nibName: "TouchIDVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openPhysicsEngine() -> Void {
        let vc = PhysicsEngineVC(nibName: "PhysicsEngineVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openWebView() -> Void {
        let vc = EngineWebVC(nibName: "EngineWebVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openLocationMonitor() -> Void {
        let vc = LocationMonitorVC(nibName: "LocationMonitorVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openApplePass() -> Void {
        let vc = PassVC(nibName: "PassVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openMyProfile() -> Void {
        let vc = MyProfileVC(nibName: "MyProfileVC", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true, completion: nil)
    }
    
    func openExpDashboard() -> Void {
        let sb = UIStoryboard(name: "ExpDashboard", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ExpDashboard")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openWKWebView() -> Void {
        let vc = WKWebViewController(nibName: "WKWebViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openGridCard() -> Void {
        let vc = GridCardContainerVC(nibName: "GridCardContainerVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openCAnimation() -> Void {
        let vc = CAnimationSample(nibName: "CAnimationSample", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
//        let vc = CAImageAnimationVC(nibName: "CAImageAnimationVC", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
        
//        let vc = CAnimationRootVC(nibName: "CAnimationRootVC", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openTwitterApp() -> Void {
        if let url = URL(string: "twitter://?"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
//        if let url = URL(string: "https://www.express.com"), UIApplication.shared.canOpenURL(url) {
//            UIApplication.shared.open(url, options: [:], completionHandler: nil)
//        }
    }
    
    func openHealthKit() -> Void {
        let vc = HealthVC(nibName: "HealthVC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
