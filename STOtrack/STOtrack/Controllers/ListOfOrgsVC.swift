////
////  ListOfOrgsVC.swift
////  STOtrack
////
////  Created by Norman Buruchara on 10/4/18.
////  Copyright © 2018 Norman Buruchara. All rights reserved.
////
//
//import UIKit
//import RealmSwift
//
//class ListOfOrgsVC: UITableViewController {
//
//    @IBAction func backButtonPressed(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
//
//
//    var discOrgs = ["Karibu", "Chinese Cultural CLub", "CUBE", "CSA", "HCO", "¡Presente!", "KCA", "Team Tibet", "VOICE", "ECCA", "ACA","ISO", "Pamila Pinoy", "Joy", "ASU" ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let Org1 = OrgInformation()
//        Org1.orgName = "Karibu"
//        Org1.fundsAvailable = 250.5;
////        discOrgs.append(Org1)
//
//        let Org2 = OrgInformation()
//        Org2.orgName = "Chinese Cultural CLub"
//        Org2.fundsAvailable = 450.4;
////        discOrgs.append(Org2)
//
//        let Org3 = OrgInformation()
//        Org3.orgName = "CUBE"
//        Org3.fundsAvailable = 356.5;
////        discOrgs.append(Org3)
//
//        let Org4 = OrgInformation()
//        Org4.orgName = "CSA"
//        Org4.fundsAvailable = 199.4;
////        discOrgs.append(Org4)
//
//        let Org5 = OrgInformation()
//        Org5.orgName = "HCO"
//        Org5.fundsAvailable = 145.2;
////        discOrgs.append(Org5)
//
//        let Org6 = OrgInformation()
//        Org6.orgName = "¡Presente!"
//        Org6.fundsAvailable = 550.6;
////        discOrgs.append(Org6)
//
//        let Org7 = OrgInformation()
//        Org7.orgName = "KCA"
//        Org7.fundsAvailable = 612.8;
////        discOrgs.append(Org7)
//
//        let Org8 = OrgInformation()
//        Org8.orgName = "Team Tibet"
//        Org8.fundsAvailable = 345.6;
////        discOrgs.append(Org8)
//
//        let Org9 = OrgInformation()
//        Org9.orgName = "VOICE"
//        Org9.fundsAvailable = 345.6;
////        discOrgs.append(Org9)
//
//        let Org10 = OrgInformation()
//        Org10.orgName = "ECCA"
//        Org10.fundsAvailable = 345.6;
////        discOrgs.append(Org10)
//
//        let Org11 = OrgInformation()
//        Org11.orgName = "Arab Cultural Association"
//        Org11.fundsAvailable = 345.6;
////        discOrgs.append(Org11)
//
//        let Org12 = OrgInformation()
//        Org12.orgName = "ISO"
//        Org12.fundsAvailable = 345.6;
////        discOrgs.append(Org12)
//
//        let Org13 = OrgInformation()
//        Org13.orgName = "Pamila Pinoy"
//        Org13.fundsAvailable = 345.6;
////        discOrgs.append(Org13)
//
//        let Org14 = OrgInformation()
//        Org14.orgName = "Joy"
//        Org14.fundsAvailable = 345.6;
////        discOrgs.append(Org14)
//
//        let Org15 = OrgInformation()
//        Org15.orgName = "ASU"
//        Org15.fundsAvailable = 345.6;
////        discOrgs.append(Org15)
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return discOrgs.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "listOrgCell", for: indexPath)
//
//        cell.textLabel?.text = discOrgs[indexPath.row]
//
//        return cell
//    }
//
//
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//
//        tableView.deselectRow(at: indexPath, animated: true)
//        performSegue(withIdentifier: "listToDisplay", sender: self)
//
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "listToDisplay", let destination = segue.destination as? OrgPageVC {
//
//            if let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) {
//                let cellPassed = discOrgs[indexPath.row]
//                destination.orgNamePassed = cellPassed
//        }
//    }
//
//    }
//
//
//

//    
//
//}
