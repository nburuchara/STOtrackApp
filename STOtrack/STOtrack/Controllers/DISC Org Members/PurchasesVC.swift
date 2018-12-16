//
//  PurchasesVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 12/5/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit
var itemsBought = [String]()
var moneySpent = [Double]()

class PurchasesVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var oName: String = ""

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsBought.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = itemsBought[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            itemsBought.remove(at: indexPath.row)
            purchaseTableView.reloadData()
        }
    }
    
    @IBOutlet weak var purchaseTableView: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        purchaseTableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        if let x = UserDefaults.standard.object(forKey: "updatedList") as? [String] {
            itemsBought = x;
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
