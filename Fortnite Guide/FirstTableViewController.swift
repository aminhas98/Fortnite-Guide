//
//  FirstTableViewController.swift
//  Fortnite Guide
//
//  Created by Angad Minhas on 8/8/18.
//  Copyright © 2018 Angad Minhas. All rights reserved.
//

import UIKit

    var selectedRow = 0

    var SecondTableArray = [String]()

class FirstTableViewController: UITableViewController {
    
    var firstTableArray = ["Week 5","Week 4", "Week 3", "Week 2", "Week 1"]
    
    var secondArray = [
        
        SecondTableStruct(secondTitle: ["Search Chests in Junk Junction (7)", "Use Rift Portals (3)", "Eliminate Opponents in a Single Match (3)", "Deal damage to players using a Clinger, Stink Bomb, or Grenade (300)", "Hit a golf ball from tee to green on different holes (5)", "Follow the treasure map found in Snobby Shores", "Eliminate opponents in Shifty Shafts (3)"]),
        
        SecondTableStruct(secondTitle: ["Build Structures (250)", "Jump through flaming hoops with ATK or shopping cart (5)", "Eliminate opponents in Dusty Divot (3)","Deal damage with Sniper Rifles to opponents (3)", "Search Chests in Flush Factory (7)","Search between a gas station, soccer pitch, and Stunt Mountain", "Pistol eliminations (3)"]),
        
        SecondTableStruct(secondTitle: ["Deal damage to opponents in a single match (500)", "Use a launchpad", "Follow the treaure map found in Flush Factory", "Search chests in Fatal Fields(7)", "Shoot a clay pigeon at different locations (5)", "Eliminate opponents i Haunted Hills (5) ","Explosive Weapon Eliminations (3)"]),
        
        SecondTableStruct(secondTitle: ["Deal Damage with Assault Rifles to opponents (1000)", "Search 7 ammo crates in a single match", "Eliminate opponents in Paradise Palms (3), Score a basket on different hoops (5)", "Search chests in Loot Laker(7)", "Search between an oasis, rock archway, and dinosaurs", "Sniper Rifle eliminations (2)"]),
        
        SecondTableStruct(secondTitle: ["Deal damage with SMG's to opponents (500)", "Search a supply llama", "Clinger, Stink Bomb or Grenade eliminations (3)", "Search Floating Lightning Bolts (7)", "Follow the treasure map found in Risky Reels", "Eliminate opponents in Retail Row (3)"])
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstTableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell")
        cell?.textLabel?.text = firstTableArray[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        let selectedItemInSecondArray = secondArray[selectedRow]
        SecondTableArray = selectedItemInSecondArray.secondTitle
    }
}
