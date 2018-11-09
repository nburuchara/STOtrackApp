//
//  DepositVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/19/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

protocol depositSentBack {
    func dataSentBack (deposit: String)
}

class DepositVC: UIViewController {

    var delegate : depositSentBack?
    
    @IBOutlet weak var depositedAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    
    }
    
    
    @IBAction func depositButtonPressed(_ sender: Any) {
        delegate?.dataSentBack(deposit: depositedAmount.text!)
        dismiss(animated: true, completion: nil)
    }
    


}
