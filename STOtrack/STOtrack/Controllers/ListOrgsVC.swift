//
//  ListOrgsVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/18/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

class OrgDetails {
    var nameOrg: String?
    var balanceOrg: Double?
    
    init (oName: String, oBalance: Double) {
        self.nameOrg = oName
        self.balanceOrg = oBalance
    }
    
}

class ListOrgsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var tableListOrgs: UITableView!
    
    var discOrgs = [OrgDetails]()

    // "ECCA", "Pamilya Pinoy", "Joy", "AASU"
    // number of sections. E.g. in an address book - alphabet letters to indicate people whose name start witha  given letter.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // number of rows for a specific section 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return discOrgs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = discOrgs[indexPath.row].nameOrg
    
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let Karibu = OrgDetails(oName: "Karibu", oBalance: 400.5)
        discOrgs.append(Karibu)
       
        let CSA = OrgDetails(oName: "Celebrate South Asia", oBalance: 345.7)
        discOrgs.append(CSA)
        
        let CCL = OrgDetails(oName: "Chinese Cultural Club", oBalance: 708.6)
        discOrgs.append(CCL)
        
        let CUBE = OrgDetails(oName: "Cultural Union of Black Expression", oBalance: 234.5)
        discOrgs.append(CUBE)
        
        let HCO = OrgDetails(oName: "Hmong Cultural Organization", oBalance: 450.4)
        discOrgs.append(HCO)
        
        let Presente = OrgDetails(oName: "¡Presente!", oBalance: 345.6)
        discOrgs.append(Presente)
        
        let KCA = OrgDetails(oName: "Korean Cultural Association", oBalance: 198.8)
        discOrgs.append(KCA)
        
        let TeamTibet = OrgDetails(oName: "Team Tibet", oBalance: 300.9)
        discOrgs.append(TeamTibet)
        
        let Voice = OrgDetails(oName: "VOICE", oBalance: 298.9)
        discOrgs.append(Voice)
        
        let ECCA = OrgDetails(oName: "Europe Caucasus & Central Asia", oBalance: 435.9)
        discOrgs.append(ECCA)
        
        let ACA = OrgDetails(oName: "Arab Cultural Association", oBalance: 753.2)
        discOrgs.append(ACA)
        
        let ISO = OrgDetails(oName: "International Student Organization", oBalance: 717.3)
        discOrgs.append(ISO)
        
        let PamilaPinoy = OrgDetails(oName: "Pamila Pinoy", oBalance: 477.8)
        discOrgs.append(PamilaPinoy)
        
        let JOY = OrgDetails(oName: "Japanese Organization Yay", oBalance: 999.9)
        discOrgs.append(JOY)
        
        let ASU = OrgDetails(oName: "Asian-American Student Union", oBalance: 453.2)
        discOrgs.append(ASU)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "listToDisplay", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listToDisplay" {
            
            let nextVC = segue.destination as! OrgPageVC
            
            nextVC.Org = discOrgs[(tableListOrgs.indexPathForSelectedRow?.row)!] 
        }
    }


}
