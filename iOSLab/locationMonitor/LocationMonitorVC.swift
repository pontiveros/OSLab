//
//  LocationMonitorVC.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 8/12/17.
//  Copyright © 2017 Pedro Ontiveros. All rights reserved.
//

import UIKit
import CoreLocation

class LocationMonitorVC: UIViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Location Monitor"
        
        self.initLocationMaanager()
    }

    func initLocationMaanager() -> Void {
        self.locationManager = CLLocationManager()
        self.locationManager?.delegate = self
        self.locationManager?.requestWhenInUseAuthorization()
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

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Location authorization changed.")
        
        if status == .authorizedWhenInUse { // When the user accept it, start to monitoring.
            self.locationManager?.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("location updates.")
    }
}
