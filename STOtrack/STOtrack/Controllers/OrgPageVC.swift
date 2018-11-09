//
//  OrgPageVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/18/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

class OrgPageVC: UIViewController, depositSentBack { 


    // display amount in account

    var Org : OrgDetails
    
    @IBOutlet weak var dollarAmount: UILabel!
    @IBOutlet weak var orgNameDisplay: UILabel!

    @IBOutlet weak var depositedAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orgNameDisplay.text! = "\(Org.nameOrg as! String)"
        dollarAmount.text! = "$\(Org.balanceOrg as! Double)"

        
        // display Org Name at the top of the screen
        // displays the amount that each Org has
        
//        if orgNameDisplay.text! == "Karibu" {
//            let Karibu = OrgInformation();
//            Karibu.fundsAvailable = 345.6;
//            dollarAmount.text? = "\(Karibu.fundsAvailable)"
//        } else if orgNameDisplay.text == "CSA" {
//            displayAmount = 3200.90
//        } else if orgNameDisplay.text == "Chinese Culture Club" {
//            displayAmount = 457.6
//        } else if orgNameDisplay.text == "CUBE" {
//            displayAmount = 1040.5
//        } else if orgNameDisplay.text == "HCO" {
//            displayAmount = 1303.2
//        } else if orgNameDisplay.text == "ISO" {
//            displayAmount = 2543.23
//        } else if orgNameDisplay.text == "KCA" {
//            displayAmount = 122.4
//        } else if orgNameDisplay.text == "¡Presente!" {
//            displayAmount = 498.00
//        } else if orgNameDisplay.text == "Team Tibet" {
//            displayAmount = 550.13
//        } else if orgNameDisplay.text == "VOICE" {
//            displayAmount = 1234.59
//        } else if orgNameDisplay.text == "ECCA" {
//            displayAmount = 341.12
//        } else if orgNameDisplay.text == "Pamilya Pinoy" {
//            displayAmount = 233.1
//        } else if orgNameDisplay.text == "Joy" {
//            displayAmount = 379.99
//        } else if orgNameDisplay.text == "AASU" {
//            displayAmount = 498.98
//        }
        
    let amount = Double(dollarAmount.text!)
        
    print(Org.balanceOrg)
    }
    
    // What happens with the data that is received
    func dataSentBack(deposit: String) {
      depositedAmount.text! = deposit
    }
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func depositBtnPressed(_ sender: Any) {
        
    }
    
    

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "orgToDisplay" {
//            let nextVC = segue.destination as! DepositVC()
//        }
//    }
    
}
