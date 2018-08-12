//
//  ViewController.swift
//  Fortnite Guide
//
//  Created by Angad Minhas on 8/8/18.
//  Copyright © 2018 Angad Minhas. All rights reserved.
//

import UIKit
import GoogleMobileAds


class ViewController: UIViewController, GADBannerViewDelegate{
    

    //IBOutles
    
    @IBOutlet weak var weeklyChallengesButton: UIButton!
    @IBOutlet weak var newsAndUpdatesButton: UIButton!
    @IBOutlet weak var helpfulTipsButton: UIButton!
    @IBOutlet weak var viewMapButton: UIButton!
    
    @IBAction func websiteNewsAndUpdates(_ sender: UIButton) {
        
        if let url = URL(string: "https://www.epicgames.com/fortnite/en-US/news") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func websiteHelpfulTips(_ sender: UIButton) {
        if let url = URL(string: "https://www.androidcentral.com/best-fortnite-tips-help-you-win") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func websiteViewMap(_ sender: UIButton) {
        if let url = URL(string: "http://www.fortnitechests.info/") {UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBOutlet weak var myBanner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Request
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        
        //set up ad
        myBanner.adUnitID = "ca-app-pub-1497111589256340/5484536218"
        myBanner.rootViewController = self
        myBanner.delegate = self
        
        myBanner.load(request)
        
        //ca-app-pub-1497111589256340/5484536218
        
    weeklyChallengesButton.layer.cornerRadius = 30
    newsAndUpdatesButton.layer.cornerRadius = 30
    helpfulTipsButton.layer.cornerRadius = 30
    viewMapButton.layer.cornerRadius = 30
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

