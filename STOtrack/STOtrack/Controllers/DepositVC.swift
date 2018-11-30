
import UIKit

protocol depositSentBack {
    func dataSentBack (deposit: Double, orgName: String)
}

class DepositVC: UIViewController {

    var delegate : depositSentBack?
    
    @IBOutlet weak var depositedAmount: UITextField!
    @IBOutlet weak var orgName: UILabel!
    
    var amountPassed:Double = 0.0
    var namePassed: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orgName.text! = namePassed

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    
    }
    
    @IBAction func depositButtonPressed(_ sender: Any) {
        let depoAmount = Double(depositedAmount.text!)
        delegate?.dataSentBack(deposit: depoAmount!, orgName: namePassed)
        dismiss(animated: true, completion: nil)
    }
    
}
