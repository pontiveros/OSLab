//
//  CAnimationSample.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 8/2/18.
//  Copyright © 2018 Pedro Ontiveros. All rights reserved.
//

import UIKit
import FLAnimatedImage

class CAnimationSample: UIViewController {

    @IBOutlet var redCircle:UIImageView!
    @IBOutlet var circle2:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Animation";

        // Do any additional setup after loading the view.
        self.circle2.animationImages = [UIImage(named: "redCircle")!, UIImage(named: "blueCircle")!]
        self.circle2.animationDuration = 10
        self.circle2.startAnimating()
        
        DispatchQueue.main.async {
            UIView.animate(withDuration: 5, animations: {
                self.redCircle.frame = self.redCircle.frame.offsetBy(dx: 300.0, dy: 0.0)
            })
        }
        
        DispatchQueue.main.async {
            UIView.animate(withDuration: 5, animations: {
                self.circle2.frame = self.circle2.frame.offsetBy(dx: 300.0, dy: 0.0)
            })
        }
        
        do {
            if let data:Data? = try Data(contentsOf: URL(string:"https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif")!) {
                var img = FLAnimatedImage(gifData: data)
                var imgView = FLAnimatedImageView(frame: CGRect(x: 20.0, y: 300.0, width: 300.0, height: 300.0))
                imgView.animatedImage = img;
                self.view.addSubview(imgView)
            }
        } catch {
            print("puta madre");
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

}
