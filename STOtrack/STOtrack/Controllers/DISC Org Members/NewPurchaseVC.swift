//
//  NewPurchaseVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 12/5/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit
import FirebaseDatabase

class NewPurchaseVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var addItemsBought: UITextField!
    @IBOutlet weak var nameOfOrg: UILabel!
    
    var ref : DatabaseReference!
    var namePassed: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        nameOfOrg.text! = namePassed
        self.addItemsBought.delegate = self

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func addPurchaseButtonPressed(_ sender: Any) {
        if addItemsBought.text! != "" {
            itemsBought.append(addItemsBought.text!)
            UserDefaults.standard.set(itemsBought, forKey: "updatedList")
        }
    
        if (nameOfOrg.text! == "Karibu") {
            ref?.child("- Transaction (Karibu)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "CSA" || nameOfOrg.text! == "Celebrate South Asia") {
            ref?.child("- Transaction (CSA)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "CCC" || nameOfOrg.text! == "Chinese Cultural Club") {
            ref?.child("- Transaction (CCC)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "Cube" || nameOfOrg.text! == "Cultural Union Of Black Expression") {
            ref?.child("- Transaction (Cube)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "HCO" || nameOfOrg.text! == "Hmong Cultural Organization") {
            ref?.child("- Transaction (HCO)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "Presente") {
            ref?.child("- Transaction (Presente)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "KCA" || nameOfOrg.text! == "Korean Cultural Association") {
            ref?.child("- Transaction (KCA)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "Team Tibet") {
            ref?.child("- Transaction (Team Tibet)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "Voice") {
            ref?.child("- Transaction (Voice)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "ECCA" || nameOfOrg.text! == "European Caucasus & Central Asia") {
            ref?.child("- Transaction (ECCA)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "ACA" || nameOfOrg.text! == "Arab Cultural Association") {
            ref?.child("- Transaction (ACA)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "ISO" || nameOfOrg.text! == "International Student Organization") {
            ref?.child("- Transaction (ISO)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "Pamila Pinoy") {
            ref?.child("- Transaction (Pamila Pinoy)").childByAutoId().setValue(addItemsBought.text!)
        } else if  (nameOfOrg.text! == "JOY" || nameOfOrg.text! == "Japanese Organization Yay") {
            ref?.child("- Transaction (JOY)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "ASU" || nameOfOrg.text! == "Asian-American Student Union") {
            ref?.child("- Transaction (ASU)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "VNO" || nameOfOrg.text! == "Vietnamese Organization") {
            ref?.child("- Transaction (VNO)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "GLOW" || nameOfOrg.text! == "Gay Lesbian Or Whatever") {
            ref?.child("- Transaction (GLOW)").childByAutoId().setValue(addItemsBought.text!)
        } else if (nameOfOrg.text! == "SOMOS" || nameOfOrg.text! == "Somos") {
            ref?.child("- Transaction (SOMOS)").childByAutoId().setValue(addItemsBought.text!)
        }
        addItemsBought.text! = ""
        ProgressHUD.showSuccess("Saved!")
        textFieldShouldReturn(textField: addItemsBought) 
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //or
        //self.view.endEditing(true)
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
