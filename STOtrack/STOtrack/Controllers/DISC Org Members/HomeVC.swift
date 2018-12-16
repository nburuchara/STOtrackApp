//
//  HomeVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/19/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit
import FirebaseDatabase

class HomeVC: UIViewController {
    @IBOutlet weak var organizationName: UILabel!
    @IBOutlet weak var orgUnitNumber: UILabel!
    @IBOutlet weak var orgBalance: UILabel!
    
    var ref: DatabaseReference!
    var databaseHandle:DatabaseHandle?
    var oNamePassed: String = ""
    var oUnitNumber: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        organizationName.text! = oNamePassed
        orgUnitNumber.text! = oUnitNumber
        
        if (organizationName.text! == "Karibu") {
            databaseHandle = ref?.child("Karibu Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "CSA" || organizationName.text == "Celebrate South Asia") {
            databaseHandle = ref?.child("CSA Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "CCC" || organizationName.text! == "Chinese Cultural Club") {
            databaseHandle = ref?.child("CCC Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "Cube" || organizationName.text! == "Cultural Union Of Black Expression") {
            databaseHandle = ref?.child("Cube Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "HCO" || organizationName.text! == "Hmong Cultural Organization") {
            databaseHandle = ref?.child("HCO Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "Presente") {
            databaseHandle = ref?.child("Presente Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "KCA" || organizationName.text! == "Korean Cultural Association") {
            databaseHandle = ref?.child("KCA Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "Team Tibet") {
            databaseHandle = ref?.child("Team Tibet Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "Voice") {
            databaseHandle = ref?.child("Voice Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "ECCA" || organizationName.text! == "Europe Caucasus & Central Asia") {
            databaseHandle = ref?.child("ECCA Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "ACA" || organizationName.text! == "Arab Cultural Association") {
            databaseHandle = ref?.child("ACA Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "ISO" || organizationName.text! == "International Student Organization") {
            databaseHandle = ref?.child("ISO Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "Pamila Pinoy") {
            databaseHandle = ref?.child("Pamila Pinoy Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "JOY" || organizationName.text! == "Japanese Organization Yay") {
            databaseHandle = ref?.child("JOY Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "ASU" || organizationName.text! == "Asian-American Student Union") {
            databaseHandle = ref?.child("ASU Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "VNO" || organizationName.text! == "Vietnamese Organization") {
            databaseHandle = ref?.child("VNO Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "GLOW" || organizationName.text! == "Gay Lesbian Or Whatever") {
            databaseHandle = ref?.child("GLOW Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (organizationName.text! == "SOMOS" || organizationName.text! == "Somos") {
            databaseHandle = ref?.child("SOMOS Balance").observe(.childAdded, with: { (snapshot) in
                self.orgBalance.text! = "$\((snapshot.value as? String)!)"
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func logOutButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func purchaseButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "purchaseSeg", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let barVC = segue.destination as? UITabBarController {
            barVC.viewControllers?.forEach({ (NewPurchaseVC ) in
                if let nextVC = NewPurchaseVC as? NewPurchaseVC {
                    nextVC.self.namePassed = organizationName.text!
                }
            })
            barVC.viewControllers?.forEach({ (PurchasesVC ) in
                if let nextVC = PurchasesVC as? PurchasesVC {
                    nextVC.oName = organizationName.text! 
                }
            })
        }
    }
    
}
