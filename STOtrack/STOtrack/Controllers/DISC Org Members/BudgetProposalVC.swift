//
//  BudgetProposalVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 12/7/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit
import Eureka
import FirebaseDatabase


class BudgetProposalVC: FormViewController {

    var ref: DatabaseReference!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.backgroundColor = .white
        tableView.showsVerticalScrollIndicator = false
        tableView.bounces  = false
        
        discBudgetForm()
        itemDetails()
    

        
        
    }

    func itemDetails () {
        
        form +++ Section("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item"
            }

            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity"
        }
            
            // New Item
        +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item1"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor1"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description1"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price1"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity1"
        }
            
            
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item2"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor2"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description2"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price2"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity2"
        }
            
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item3"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor3"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description3"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price3"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity3"
        }
            
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item4"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor4"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description4"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price4"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity4"
        }
            
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item5"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor5"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description5"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price5"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity5"
        }
            
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item6"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor6"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description6"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price6"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity6"
        }
            
         // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item7"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor7"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description7"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price7"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity7"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item8"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor8"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description8"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price8"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity8"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item9"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor9"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description9"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price9"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity9"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item10"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor10"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description10"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price10"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity10"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item11"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor11"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description11"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price11"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity11"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item12"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor12"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description12"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price12"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity12"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item13"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor13"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description13"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price13"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity13"
        }
        
            // New Item
            +++ Section ("New Item")
            <<< TextRow(){ row in
                row.title = "Item: "
                row.placeholder = "Enter item here"
                row.tag = "item14"
            }
            
            <<< TextRow(){ row in
                row.title = "Vendor: "
                row.placeholder = "Enter vendor name"
                row.tag = "vendor14"
            }
            
            <<< TextRow(){ row in
                row.title = "Description: "
                row.placeholder = "Enter brief description"
                row.tag = "description14"
            }
            <<< DecimalRow(){ row in
                row.title = "Price: "
                row.placeholder = "Enter price"
                row.tag = "price14"
            }
            <<< DecimalRow(){ row in
                row.title = "Quantity: "
                row.placeholder = "Enter quantity"
                row.tag = "quantity14"
        }
        
    }
    
    
   
    
    
    
    func discBudgetForm() {
        form +++ Section("Preliminary Details: ")
            <<< TextRow(){ row in
                row.title = "Org Name: "
                row.placeholder = "Enter text here"
                row.tag = "orgName"
            }
            <<< TextRow(){ row in
                row.title = "Event Name: "
                row.placeholder = "Enter text here"
                row.tag = "eventName"
            }
            <<< DateRow(){
                $0.title = "Date of Event"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
                $0.tag = "eventDate"
            }
            
            <<< DateRow(){
                $0.title = "Date of Submission"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
                $0.tag = "submitDate"
            }
            
            <<< DateRow(){
                $0.title = "Date for consideration: "
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
                $0.tag = "considerDate"
            }
            <<< TextRow(){ row in
                row.title = "Event Description: "
                row.placeholder = "Enter text here"
                row.tag = "eventDescrip"
            }
            

    }

    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func proceedButtonPressed(_ sender: Any) {

        let refreshAlert = UIAlertController(title: "Are you reay to submit the form?", message: "Please review the form thoroughly and make sure all details are correct", preferredStyle: UIAlertControllerStyle.alert)
        ref = Database.database().reference() 
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
            let dict = self.form.values(includeHidden: true)
            let organizationName = ((dict["orgName"] as? String)!)
            if let orgName = (dict["orgName"] as? String) {
                print("\(orgName)")
                let org:String = "Organization: \(orgName)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(org)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(org)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(org)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(org)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(org)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(org)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(org)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(org)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(org)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(org)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(org)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(org)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(org)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(org)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(org)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(org)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(org)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(org)
                }
            }
            if let eventName = (dict["eventName"] as? String) {
                print("\(eventName)")
                let event:String = "Event Name: \(eventName)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(event)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(event)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(event)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(event)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(event)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(event)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(event)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(event)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(event)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(event)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(event)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(event)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(event)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(event)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(event)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(event)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(event)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(event)
                }
            }
            if let eventDate = (dict["eventDate"]) {
                print("\(eventDate)")
                var passedEventDate: String = "\(eventDate)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(passedEventDate)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(passedEventDate)
                }
            }
            if let submitDate = (dict["submitDate"]) {
                print("\(submitDate)")
                let passedSubmitDate: String = "Submitted on: \(submitDate)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(passedSubmitDate)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(passedSubmitDate)
                }
                
            }
            if let considerDate = (dict["considerDate"]) {
                print("\(considerDate)")
                let consider: String = "Date for Consideration: \(considerDate)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(consider)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(consider)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(consider)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(consider)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(consider)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(consider)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(consider)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(consider)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(consider)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(consider)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(consider)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(consider)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(consider)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(consider)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(consider)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(consider)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(consider)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(consider)
                }
            }
            if let eventDescrip = (dict["eventDescrip"] as? String) {
                print("\(eventDescrip)")
                var event: String = "Event Description: \(eventDescrip)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(event)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(event)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(event)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(event)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(event)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(event)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(event)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(event)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(event)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(event)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(event)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(event)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(event)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(event)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(event)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(event)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(event)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(event)
                }
            }
            
            var item1Total: Double = 0
            if let item = (dict["item"] as? String) {
                print("\(item)")
                func itemSave () {
                    let it: String = "Item: \(item)"
                    if (organizationName == "Karibu") {
                        self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                    } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                        self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                    } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                        self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                    } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                        self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                    } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                        self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                    } else if (organizationName == "Presente") {
                        self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                    } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                        self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                    } else if (organizationName == "Team Tibet") {
                        self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                    } else if (organizationName == "Voice") {
                        self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                    } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                        self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                    } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                        self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                    } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                        self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                    } else if (organizationName == "Pamila Pinoy") {
                        self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                    } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                        self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                    } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                        self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                    } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                        self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                    } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                        self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                    } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                        self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                    }
                }
                itemSave();
            }
            if let vendor = (dict["vendor"] as? String) {
                print("\(vendor)")
                func vendorSave () {
                    let vend: String = "Vendor: \(vendor)"
                    if (organizationName == "Karibu") {
                        self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                    } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                        self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                    } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                        self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                    } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                        self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                    } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                        self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                    } else if (organizationName == "Presente") {
                        self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                    } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                        self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                    } else if (organizationName == "Team Tibet") {
                        self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                    } else if (organizationName == "Voice") {
                        self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                    } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                        self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                    } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                        self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                    } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                        self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                    } else if (organizationName == "Pamila Pinoy") {
                        self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                    } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                        self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                    } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                        self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                    } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                        self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                    } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                        self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                    } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                        self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                    }
                }
                vendorSave()
            }
            if let description = (dict["description"] as? String) {
                print("\(description)")
                func descriptionSave () {
                    let des: String = "Description: \(description)"
                    if (organizationName == "Karibu") {
                        self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                    } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                        self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                    } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                        self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                    } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                        self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                    } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                        self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                    } else if (organizationName == "Presente") {
                        self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                    } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                        self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                    } else if (organizationName == "Team Tibet") {
                        self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                    } else if (organizationName == "Voice") {
                        self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                    } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                        self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                    } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                        self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                    } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                        self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                    } else if (organizationName == "Pamila Pinoy") {
                        self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                    } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                        self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                    } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                        self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                    } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                        self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                    } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                        self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                    } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                        self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                    }
                }
                descriptionSave()
            }
            if let price = (dict["price"] as? Double) {
                print("\(price)")
                func priceSave() {
                    let pr: String = "Price: \(price)"
                    if (organizationName == "Karibu") {
                        self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                    } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                        self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                    } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                        self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                    } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                        self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                    } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                        self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                    } else if (organizationName == "Presente") {
                        self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                    } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                        self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                    } else if (organizationName == "Team Tibet") {
                        self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                    } else if (organizationName == "Voice") {
                        self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                    } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                        self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                    } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                        self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                    } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                        self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                    } else if (organizationName == "Pamila Pinoy") {
                        self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                    } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                        self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                    } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                        self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                    } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                       self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                    } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                        self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                    } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                        self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                    }
                }
                priceSave()
            }
            if let quantity = (dict["quantity"] as? Double) {
                print("\(quantity)")
                func quantitySave () {
                    let quan: String = "Quantity: \(quantity)"
                    if (organizationName == "Karibu") {
                       self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                    } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                        self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                    } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                        self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                    } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                        self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                    } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                        self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                    } else if (organizationName == "Presente") {
                        self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                    } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                        self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                    } else if (organizationName == "Team Tibet") {
                        self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                    } else if (organizationName == "Voice") {
                        self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                    } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                        self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                    } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                        self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                    } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                        self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                    } else if (organizationName == "Pamila Pinoy") {
                       self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                    } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                        self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                    } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                        self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                    } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                        self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                    } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                        self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                    } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                        self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                    }
                }
                quantitySave()
            }
            if (((dict["price"] as? Double)) != nil && ((dict["quantity"] as? Double)) != nil) {
                item1Total = ((dict["price"] as? Double)!) * ((dict["quantity"] as? Double)!)
                print(item1Total)
                let rounded_value = String(format: "%.2f", item1Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item2Total: Double = 0
            if let item = (dict["item1"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor1"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description1"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price1"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity1"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price1"] as? Double)) != nil && ((dict["quantity1"] as? Double)) != nil) {
                item2Total = ((dict["price1"] as? Double)!) * ((dict["quantity1"] as? Double)!)
                print(item2Total)
                let rounded_value = String(format: "%.2f", item2Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item3Total: Double = 0
            if let item = (dict["item2"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor2"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description2"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price2"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity2"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price2"] as? Double)) != nil && ((dict["quantity2"] as? Double)) != nil) {
                item3Total = ((dict["price1"] as? Double)!) * ((dict["quantity2"] as? Double)!)
                print(item3Total)
                let rounded_value = String(format: "%.2f", item3Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item4Total: Double = 0
            if let item = (dict["item3"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor3"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description3"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price3"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity3"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price3"] as? Double)) != nil && ((dict["quantity3"] as? Double)) != nil) {
                item4Total = ((dict["price3"] as? Double)!) * ((dict["quantity3"] as? Double)!)
                print(item4Total)
                let rounded_value = String(format: "%.2f", item4Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item5Total: Double = 0
            if let item = (dict["item4"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor4"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description4"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price4"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity4"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price4"] as? Double)) != nil && ((dict["quantity4"] as? Double)) != nil) {
                item5Total = ((dict["price4"] as? Double)!) * ((dict["quantity4"] as? Double)!)
                print(item5Total)
                let rounded_value = String(format: "%.2f", item5Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item6Total: Double = 0
            if let item = (dict["item5"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor5"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description5"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price5"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity5"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price5"] as? Double)) != nil && ((dict["quantity5"] as? Double)) != nil) {
                item6Total = ((dict["price5"] as? Double)!) * ((dict["quantity5"] as? Double)!)
                print(item6Total)
                let rounded_value = String(format: "%.2f", item6Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item7Total: Double = 0
            if let item = (dict["item6"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor6"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description6"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price6"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity6"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price6"] as? Double)) != nil && ((dict["quantity6"] as? Double)) != nil) {
                item7Total = ((dict["price6"] as? Double)!) * ((dict["quantity6"] as? Double)!)
                print(item7Total)
                let rounded_value = String(format: "%.2f", item7Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item8Total: Double = 0
            if let item = (dict["item7"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor7"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description7"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price7"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity7"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price7"] as? Double)) != nil && ((dict["quantity7"] as? Double)) != nil) {
                item8Total = ((dict["price7"] as? Double)!) * ((dict["quantity7"] as? Double)!)
                print(item8Total)
                let rounded_value = String(format: "%.2f", item8Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item9Total: Double = 0
            if let item = (dict["item8"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor8"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description8"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price8"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity8"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price8"] as? Double)) != nil && ((dict["quantity8"] as? Double)) != nil) {
                item9Total = ((dict["price8"] as? Double)!) * ((dict["quantity8"] as? Double)!)
                print(item9Total)
                let rounded_value = String(format: "%.2f", item9Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item10Total: Double = 0
            if let item = (dict["item9"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor9"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description9"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price9"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity9"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price9"] as? Double)) != nil && ((dict["quantity9"] as? Double)) != nil) {
                item10Total = ((dict["price9"] as? Double)!) * ((dict["quantity9"] as? Double)!)
                print(item10Total)
                let rounded_value = String(format: "%.2f", item10Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item11Total: Double = 0
            if let item = (dict["item10"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor10"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description10"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price10"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity10"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price10"] as? Double)) != nil && ((dict["quantity10"] as? Double)) != nil) {
                item11Total = ((dict["price10"] as? Double)!) * ((dict["quantity10"] as? Double)!)
                print(item11Total)
                let rounded_value = String(format: "%.2f", item11Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item12Total: Double = 0
            if let item = (dict["item11"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor11"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description11"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price11"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity11"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price11"] as? Double)) != nil && ((dict["quantity11"] as? Double)) != nil) {
                item12Total = ((dict["price11"] as? Double)!) * ((dict["quantity11"] as? Double)!)
                print(item12Total)
                let rounded_value = String(format: "%.2f", item12Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item13Total: Double = 0
            if let item = (dict["item12"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor12"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description12"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price12"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity12"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price12"] as? Double)) != nil && ((dict["quantity12"] as? Double)) != nil) {
                item13Total = ((dict["price12"] as? Double)!) * ((dict["quantity12"] as? Double)!)
                print(item13Total)
                let rounded_value = String(format: "%.2f", item13Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item14Total: Double = 0
            if let item = (dict["item13"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor13"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description13"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price13"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity13"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price13"] as? Double)) != nil && ((dict["quantity13"] as? Double)) != nil) {
                item14Total = ((dict["price13"] as? Double)!) * ((dict["quantity13"] as? Double)!)
                print(item9Total)
                let rounded_value = String(format: "%.2f", item14Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            
            var item15Total: Double = 0
            if let item = (dict["item14"] as? String) {
                print("\(item)")
                let it: String = "Item: \(item)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(it)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(it)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(it)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(it)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(it)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(it)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(it)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(it)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(it)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(it)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(it)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(it)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(it)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(it)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(it)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(it)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(it)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(it)
                }
                
            }
            if let vendor = (dict["vendor14"] as? String) {
                print("\(vendor)")
                let vend: String = "Vendor: \(vendor)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(vend)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(vend)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(vend)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(vend)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(vend)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(vend)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(vend)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(vend)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(vend)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(vend)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(vend)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(vend)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(vend)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(vend)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(vend)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(vend)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(vend)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(vend)
                }
                
            }
            if let description = (dict["description14"] as? String) {
                print("\(description)")
                let des: String = "Description: \(description)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(des)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(des)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(des)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(des)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(des)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(des)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(des)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(des)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(des)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(des)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(des)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(des)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(des)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(des)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(des)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(des)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(des)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(des)
                }
                
            }
            if let price = (dict["price14"] as? Double) {
                print("\(price)")
                let pr: String = "Price: \(price)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(pr)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(pr)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(pr)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(pr)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(pr)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(pr)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(pr)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(pr)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(pr)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(pr)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(pr)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(pr)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(pr)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(pr)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(pr)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(pr)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(pr)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(pr)
                }
            }
            if let quantity = (dict["quantity14"] as? Double) {
                print("\(quantity)")
                let quan: String = "Quantity: \(quantity)"
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(quan)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(quan)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(quan)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(quan)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(quan)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(quan)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(quan)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(quan)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(quan)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(quan)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(quan)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(quan)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(quan)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(quan)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(quan)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(quan)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(quan)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(quan)
                }
            }
            if (((dict["price14"] as? Double)) != nil && ((dict["quantity14"] as? Double)) != nil) {
                item15Total = ((dict["price14"] as? Double)!) * ((dict["quantity14"] as? Double)!)
                print(item15Total)
                let rounded_value = String(format: "%.2f", item15Total)
                if (organizationName == "Karibu") {
                    self.ref?.child("- Budget Requests Karibu").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CSA" || organizationName == "Celebrate South Asia") {
                    self.ref?.child("- Budget Requests CSA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "CCC" || organizationName == "Chinese Cultural Club") {
                    self.ref?.child("- Budget Requests CCC").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Cube" || organizationName == "Cultural Union Of Black Expression") {
                    self.ref?.child("- Budget Requests Cube").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "HCO" || organizationName == "Hmong Cultural Organization") {
                    self.ref?.child("- Budget Requests HCO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Presente") {
                    self.ref?.child("- Budget Requests Presente").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "KCA" || organizationName == "Korean Cultural Association") {
                    self.ref?.child("- Budget Requests KCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Team Tibet") {
                    self.ref?.child("- Budget Requests Team Tibet").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Voice") {
                    self.ref?.child("- Budget Requests Voice").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ECCA" || organizationName == "European Caucasus & Central Asia") {
                    self.ref?.child("- Budget Requests ECCA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ACA" || organizationName == "Arab Cultural Association") {
                    self.ref?.child("- Budget Requests ACA").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ISO" || organizationName == "International Student Organization") {
                    self.ref?.child("- Budget Requests ISO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "Pamila Pinoy") {
                    self.ref?.child("- Budget Requests Pamila Pinoy").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "JOY" || organizationName == "Japanese Organization Yay") {
                    self.ref?.child("- Budget Requests JOY").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "ASU" || organizationName == "Asian-American Student Union") {
                    self.ref?.child("- Budget Requests ASU").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "VNO" || organizationName == "Vietnamese Organization") {
                    self.ref?.child("- Budget Requests VNO").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "GLOW" || organizationName == "Gay Lesbian Or Whatever") {
                    self.ref?.child("- Budget Requests GLOW").childByAutoId().setValue(rounded_value)
                } else if (organizationName == "SOMOS" || organizationName == "Somos") {
                    self.ref?.child("- Budget Requests SOMOS").childByAutoId().setValue(rounded_value)
                }
            }
            print("\n")
            ProgressHUD.showSuccess("Submitted!")
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            refreshAlert.dismiss(animated: true, completion: nil)
        }))
        
        present(refreshAlert, animated: true, completion: nil)
        
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier 
    }
    */
    
    

}
