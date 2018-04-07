//
//  MyProfileVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 9/12/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class MyProfileVC: ButtonBarPagerTabStripViewController {

//    @IBOutlet weak var tabHeader: UICollectionView!
//    @IBOutlet weak var contentView: UIScrollView!
    
    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.buttonBarHeight = 50.0
//        settings.style.selectedBarBackgroundColor = purpleInspireColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
//        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
//            guard changeCurrentIndex == true else { return }
//            oldCell?.label.textColor = .black
//            newCell?.label.textColor = self?.purpleInspireColor
        
        super.viewDidLoad()
        self.title = "My Profile"
        self.view.backgroundColor = UIColor(colorLiteralRed: 170.0/255.0, green: 20.0/255.0, blue: 200.0/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = TabMessageVC(nibName: "TabMessageVC", bundle: nil)
        let child_2 = TabPerksVC(nibName: "TabPerksVC", bundle: nil)
        return [child_1, child_2]
    }
    
    func getDataFrom(urlString: String!) {
        var request        = URLRequest(url: URL(string:"https://passcenter.3c.com/pass/template/55g2nqeowvbklmvhungznlwdme")!)
        request.httpMethod = "POST"
//        request.addValue("6gr5JALChF7Y3yCRTxyfK2O8SHitw1vN2xxcMQB7", forHTTPHeaderField: "x-api-key")
//        request.addValue("application/hal+json", forHTTPHeaderField: "Accept")
//        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.httpBody = self.template3C.data(using: .utf8)
        
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
