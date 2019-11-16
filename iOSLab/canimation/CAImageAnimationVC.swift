//
//  CAImageAnimationVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 11/5/18.
//  Copyright © 2018 Pedro Ontiveros. All rights reserved.
//

import UIKit
import FLAnimatedImage

class CAImageAnimationVC: UIViewController {

    @IBOutlet var imgContainer: FLAnimatedImageView!;
    @IBOutlet var imgAnimation: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        do {
            // http://www.animatedimages.org/data/media/154/animated-clown-image-0024.gif
            // https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif
            if let data:Data = try Data(contentsOf: URL(string:"https://media.giphy.com/media/zAYZOtH5OMhuU/giphy.gif")!) {
                let img = FLAnimatedImage(gifData: data)
//                let imgView = FLAnimatedImageView(frame: CGRect(x: 100.0, y: 20.0, width: 300.0, height: 300.0))
                imgContainer.animatedImage = img;
                self.view.addSubview(imgContainer)
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
