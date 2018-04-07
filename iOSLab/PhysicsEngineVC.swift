//
//  PhysicsEngineVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 7/23/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit

class PhysicsEngineVC: UIViewController, UICollisionBehaviorDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var label1:UILabel!
    @IBOutlet weak var button1:UIButton!
    @IBOutlet weak var box1:UIView!
    
    var animator: UIDynamicAnimator!
    
    var items:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Physics Engine"
        
        self.animator = UIDynamicAnimator(referenceView: self.view)
        
        let gravity = UIGravityBehavior(items: [self.label1, self.button1, self.box1])
        gravity.magnitude = 0.6
        
        let collision = UICollisionBehavior(items: [self.label1, self.button1, self.box1])
        collision.translatesReferenceBoundsIntoBoundary = true
        
        let itemBehavior = UIDynamicItemBehavior(items: [self.label1, self.box1])
        itemBehavior.elasticity = 0.4
        
        self.animator.addBehavior(gravity)
        self.animator.addBehavior(itemBehavior)
        self.animator.addBehavior(collision)
        
        collision.collisionDelegate = self
        
        for n in 1...100 {
            self.items.append("Item order \(n) in the future")
        }
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

    func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, with item2: UIDynamicItem) {
        
    }
    
    func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?) {
    
    }
    
    @IBAction func onTouchButton1(sender: AnyObject) -> Void {
        let alert = UIAlertController(title: "Physics Engine", message: "Action performed by button1", preferredStyle: .alert)
        let action = UIAlertAction(title: "Accept", style: .default, handler: nil)
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier:"cellStandard") as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellStandard")
        }
        
        cell?.textLabel?.text = self.items[indexPath.row]
        
        return cell!
    }
}
