//
//  ExecLoginVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 12/4/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

class ExecLoginVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.userName.delegate = self
        self.userPassword.delegate = self

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        if (userName.text! == "willia16" && userPassword.text! == "exec9018") {
            performSegue(withIdentifier: "execLogin", sender: self)
        } else if (userName.text! == "gonzal9" && userPassword.text! == "exec8018") {
            performSegue(withIdentifier: "execLogin", sender: self)
        } else if (userName.text! == "jiwani1" && userPassword.text! == "exec7018") {
            performSegue(withIdentifier: "execLogin", sender: self)
        } else if (userName.text! == "park7" && userPassword.text! == "exec6018") {
            performSegue(withIdentifier: "execLogin", sender: self)
        } else {
            let alert = UIAlertController(title: "Oops", message: "Invalid login details have been entered, please try again.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "execLogin") {
            
        }
    }

}
