//
//  LogInVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/19/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

class LogInVC: UIViewController {
    @IBOutlet weak var orgName: UITextField!
    @IBOutlet weak var unitNumber: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        orgName.text! = ""
        unitNumber.text! = ""
        passwordField.text! = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if (orgName.text! == "Karibu" && unitNumber.text! == "\(100)" && passwordField.text! == "karibu2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "CSA" || orgName.text == "Celebrate South Asia" && unitNumber.text! == "\(101)" && passwordField.text! == "csa2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "CCC" || orgName.text == "Chinese Cultural Club" && unitNumber.text! == "\(102)" && passwordField.text! == "ccc2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "Cube" || orgName.text == "Cultural Union Of Black Expression" && unitNumber.text! == "\(103)" && passwordField.text! == "cube2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "HCO" || orgName.text == "Hmong Cultural Organization" && unitNumber.text! == "\(104)" && passwordField.text! == "hco2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "Presente" && unitNumber.text! == "\(105)" && passwordField.text! == "presente2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "KCA" || orgName.text == "Korean Cultural Association" && unitNumber.text! == "\(106)" && passwordField.text! == "kca2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "Team Tibet" && unitNumber.text! == "\(107)" && passwordField.text! == "teamtibet2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "Voice" && unitNumber.text! == "\(108)" && passwordField.text! == "voice2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "ECCA" || orgName.text == "European Caucasus & Central Asia" && unitNumber.text! == "\(109)" && passwordField.text! == "ecca2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "ACA" || orgName.text == "Arab Cultural Association" && unitNumber.text! == "\(110)" && passwordField.text! == "aca2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "ISO" || orgName.text == "International Student Organization" && unitNumber.text! == "\(111)" && passwordField.text! == "iso2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "Pamila Pinoy" && unitNumber.text! == "\(112)" && passwordField.text! == "pp2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "JOY" || orgName.text == "Japanese Organization Yay" && unitNumber.text! == "\(113)" && passwordField.text! == "joy2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "ASU" || orgName.text == "Asian-American Student Association" && unitNumber.text! == "\(114)" && passwordField.text! == "asu2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "VNO" || orgName.text == "Vietnamese Organization" && unitNumber.text! == "\(115)" && passwordField.text! == "vno2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "GLOW" || orgName.text == "Gay Lesbian Or Whatever" && unitNumber.text! == "\(116)" && passwordField.text! == "glow2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        } else if (orgName.text! == "SOMOS" || orgName.text == "Somos" && unitNumber.text! == "\(117)" && passwordField.text! == "somos2018") {
            performSegue(withIdentifier: "memberLogin", sender: self)
        }
        else {
            let alert = UIAlertController(title: "Oops", message: "Invalid login details have been entered, please try again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "memberLogin") {
                let nextVC = segue.destination as! HomeVC
                nextVC.oNamePassed = orgName.text!
                nextVC.oUnitNumber = unitNumber.text!
        }
    }
 

}
