//
//  FundingRequestVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/19/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit
import MessageUI

class FundingRequestVC: UIViewController, MFMailComposeViewControllerDelegate {
 
    // Information
    @IBOutlet weak var discRep: UITextField!
    @IBOutlet weak var eventName: UITextField!
    
    
    
    // Items:
    @IBOutlet weak var item1: UITextField!
    @IBOutlet weak var item2: UITextField!
    @IBOutlet weak var item3: UITextField!
    @IBOutlet weak var item4: UITextField!
    @IBOutlet weak var item5: UITextField!
    
    // Prices:
    @IBOutlet weak var price1: UITextField!
    @IBOutlet weak var price2: UITextField!
    @IBOutlet weak var price3: UITextField!
    @IBOutlet weak var price4: UITextField!
    @IBOutlet weak var price5: UITextField!
    
    // Quantities
    @IBOutlet weak var q1: UITextField!
    @IBOutlet weak var q2: UITextField!
    @IBOutlet weak var q3: UITextField!
    @IBOutlet weak var q4: UITextField!
    @IBOutlet weak var q5: UITextField!
    
    
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendButton(_ sender: Any) {

    let mailComposeVC = configureMailController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeVC, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    // function to display contents in Mail app
    func configureMailController () -> MFMailComposeViewController {
        let toRecipient = ["buruch1@stolaf.edu", "other@email.com"]
        let mc = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipient)
        mc.setSubject(discRep.text!)
        mc.setMessageBody("Name \(discRep.text!) \n Event Name: \(eventName.text!) \n\n Item: \(item1.text!) \n Price:\(price1.text!)\t Quantity: \(q1.text!) \n\n Item: \(item2.text!) \n Price:\(price2.text!)\t Quantity: \(q2.text!) \n\n Item: \(item3.text!) \n Price:\(price3.text!)\t Quantity: \(q3.text!) \n\n Item: \(item4.text!) \n Price:\(price4.text!)\t Quantity: \(q4.text!) \n\n Item: \(item5.text!) \n Price:\(price5.text!)\t Quantity: \(q5.text!)", isHTML: false)
        
        return mc
    }
    
    // function for potential errors
    func showMailError () {
        let mailErrorAlert = UIAlertController (title: "Could not send mail", message: "Something went wrong, message did not send", preferredStyle: .alert)
        let dismiss = UIAlertAction (title: "Ok", style: .default, handler: nil)
        mailErrorAlert.addAction(dismiss)
        self.present(mailErrorAlert, animated: true, completion: nil)
    }
    
    // function to go back to app when done
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func headToMail(_ sender: Any) {
        self.resignFirstResponder
    }
    
   
}
