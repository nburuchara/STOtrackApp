
import UIKit
import FirebaseDatabase


protocol withdrawSentBack {
    func withdrawDataSentBack (withdraw: Double, orgName: String)
}


class WithdrawVC: UIViewController {
    
    var delegate : withdrawSentBack?
    var ref: DatabaseReference!

    @IBOutlet weak var orgName: UILabel!
    @IBOutlet weak var withdrawAmount: UITextField!
    
    var withdrawAmountPassed: Double = 0.0
    var oNamePassed: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        orgName.text! = oNamePassed
        
        
    }
    
    @IBAction func withdrawButtonPressed(_ sender: Any) {
        if (withdrawAmount.text!.isEmpty) {
            let alert = UIAlertController(title: "Oops", message: "Please enter an amount to withdraw.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else if (withdrawAmount.text! == ".") {
            let alert = UIAlertController(title: "Oops", message: "Please enter an amount to withdraw.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            let wdrawAmount = Double(withdrawAmount.text!)
            delegate?.withdrawDataSentBack (withdraw: wdrawAmount!, orgName: oNamePassed)
            dismiss(animated: true, completion: nil)
            ref?.child("- Withdrawals from: \(orgName.text!)").childByAutoId().setValue(withdrawAmount.text!)
            ProgressHUD.showSuccess("Done!")
            textFieldShouldReturn(textField: withdrawAmount)
        }
        
    }
    

    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        textFieldShouldReturn(textField: withdrawAmount)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //or
        //self.view.endEditing(true)
        return true
    }
    
}
