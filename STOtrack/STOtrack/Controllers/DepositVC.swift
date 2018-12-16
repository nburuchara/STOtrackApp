
import UIKit
import FirebaseDatabase


protocol depositSentBack {
    func dataSentBack (deposit: Double, orgName: String)
}

class DepositVC: UIViewController {

    
    var delegate : depositSentBack?
    var ref: DatabaseReference!
    
    @IBOutlet weak var depositedAmount: UITextField!
    @IBOutlet weak var orgName: UILabel!
    
    var amountPassed:Double = 0.0
    var namePassed: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        orgName.text! = namePassed
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        textFieldShouldReturn(textField: depositedAmount)
    
    }
    
    @IBAction func depositButtonPressed(_ sender: Any) {
        
        if (depositedAmount.text!.isEmpty) {
            let alert = UIAlertController(title: "Oops", message: "Please enter an amount to deposit.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            let depoAmount = Double(depositedAmount.text!)
            delegate?.dataSentBack(deposit: depoAmount!, orgName: namePassed)
            dismiss(animated: true, completion: nil)
            ref?.child("- Deposits to: \(orgName.text!)").childByAutoId().setValue(depositedAmount.text!)
            ProgressHUD.showSuccess("Done!")
            textFieldShouldReturn(textField: depositedAmount)
        }
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //or
        //self.view.endEditing(true)
        return true
    }
    
}
