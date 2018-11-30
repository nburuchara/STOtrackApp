
import UIKit

protocol withdrawSentBack {
    func withdrawDataSentBack (withdraw: Double, orgName: String)
}


class WithdrawVC: UIViewController {
    
    var delegate : withdrawSentBack?

    @IBOutlet weak var orgName: UILabel!
    @IBOutlet weak var withdrawAmount: UITextField!
    
    var withdrawAmountPassed: Double = 0.0
    var oNamePassed: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orgName.text! = oNamePassed
        
    }
    
    @IBAction func withdrawButtonPressed(_ sender: Any) {
        let wdrawAmount = Double(withdrawAmount.text!)
        delegate?.withdrawDataSentBack (withdraw: wdrawAmount!, orgName: oNamePassed)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
