//
//  EvaluationForm.swift
//  STOtrack
//
//  Created by Norman Buruchara on 3/15/19.
//  Copyright © 2019 Norman Buruchara. All rights reserved.
//

import UIKit
import MessageUI

class EvaluationForm: UIViewController, UITextFieldDelegate, UITextViewDelegate, MFMailComposeViewControllerDelegate{
    
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var numberOfAttendees: UITextField!
    @IBOutlet weak var eventDescription: UITextView!
    @IBOutlet weak var dateOfEvent: UITextField!
    private var datePicker : UIDatePicker?
    @IBOutlet weak var orgName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Layout Formatting
        eventDescription.layer.cornerRadius = 15.0
        eventDescription.layer.borderWidth = 2.0
        dateOfEvent.layer.cornerRadius = 7.0
        dateOfEvent.layer.borderWidth = 2.0
        numberOfAttendees.layer.cornerRadius = 7.0
        numberOfAttendees.layer.borderWidth = 2.0
        eventName.layer.cornerRadius = 7.0
        eventName.layer.borderWidth = 2.0
        orgName.layer.cornerRadius = 7.0
        orgName.layer.borderWidth = 2.0
        
        // Dismiss when return button pressed
        self.eventName.delegate = self
        self.numberOfAttendees.delegate = self
        self.eventDescription.delegate = self
        self.orgName.delegate = self
        
        // Date picker manipulation
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(EvaluationForm.dateChanged(datePicker:)), for: .valueChanged)
        dateOfEvent.inputView = datePicker
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(EvaluationForm.viewTapped(gestureREcognizer:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTapped (gestureREcognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged (datePicker : UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyy"
        dateOfEvent.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    @IBAction func sumbitFormPressed(_ sender: Any) {
        let mailComposeViewController = configMailController()
        if (MFMailComposeViewController.canSendMail()) {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
        

    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func configMailController() -> MFMailComposeViewController {

        let mailComposeVC = MFMailComposeViewController()
        mailComposeVC.mailComposeDelegate = self
        mailComposeVC.setToRecipients(["buruch1@stolaf.edu"])
        mailComposeVC.setSubject("\(orgName.text!): Post Evaluation Form")
        mailComposeVC.setMessageBody("Event Name: \(eventName.text!) \n\n Date: \(dateOfEvent.text!)  \n\n Attendees: \(numberOfAttendees.text!) \n\n Event Description: \(eventDescription.text!)", isHTML: false)
        
        return mailComposeVC
    }
    
    func showSendMailErrorAlert () {
    
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion:  nil)
    }
    

}
