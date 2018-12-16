//
//  ListOrgsVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/18/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

class ListOrgsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var tableListOrgs: UITableView!
    
    let allOrgs = Organizations()
    
    // number of sections. E.g. in an address book - alphabet letters to indicate people whose name start witha  given letter.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // number of rows for a specific section 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allOrgs.discOrgs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = allOrgs.discOrgs[indexPath.row].nameOrg
    
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "listToDisplay", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listToDisplay" {
            let nextVC = segue.destination as! OrgPageVC
            nextVC.Org = allOrgs.discOrgs[(tableListOrgs.indexPathForSelectedRow?.row)!]
            
        }
    }


}
