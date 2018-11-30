//
//  OrgPageVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/18/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit

class OrgPageVC: UIViewController, depositSentBack, withdrawSentBack {


    // display amount in account

    var Org : OrgDetails?
    let allOrgs = Organizations()
    
    // Iterate through Organizations
    let Karibu:Int = 0
    let CSA: Int = 1
    let CCC: Int = 2
    let CUBE: Int = 3
    let HCO:Int = 4
    let Presente:Int = 5
    let KCA:Int = 6
    let TeamTibet:Int = 7
    let Voice:Int = 8
    let ECCA:Int = 9
    let ACA:Int = 10
    let ISO:Int = 11
    let PamilaPinoy:Int = 12
    let JOY:Int = 13
    let ASU:Int = 14
    
    @IBOutlet weak var dollarAmount: UILabel!
    @IBOutlet weak var orgNameDisplay: UILabel!
    @IBOutlet weak var depositedAmount: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orgNameDisplay.text! = "\(Org?.nameOrg as! String)"
        dollarAmount.text! = "$\(Org?.balanceOrg as! Double)"

        // Manipulate Org Name and Balances
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        var karibuBalance = allOrgs.discOrgs[Karibu].balanceOrg
        
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        var csaBalance = allOrgs.discOrgs[CSA].balanceOrg
        
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        var cccBalance = allOrgs.discOrgs[CCC].balanceOrg
        
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        var cubeBalance = allOrgs.discOrgs[CUBE].balanceOrg
        
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        var hcoBalance = allOrgs.discOrgs[HCO].balanceOrg
        
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        var presenteBalance = allOrgs.discOrgs[Presente].balanceOrg
        
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        var kcaBalance = allOrgs.discOrgs[KCA].balanceOrg
        
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        var teamtibetBalance = allOrgs.discOrgs[TeamTibet].balanceOrg
        
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        var voiceBalance = allOrgs.discOrgs[Voice].balanceOrg
        
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        var eccaBalance = allOrgs.discOrgs[ECCA].balanceOrg
        
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        var acaBalance = allOrgs.discOrgs[ACA].balanceOrg
        
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        var isoBalance = allOrgs.discOrgs[ISO].balanceOrg
        
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        var ppBalance = allOrgs.discOrgs[PamilaPinoy].balanceOrg
        
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        var joyBalance = allOrgs.discOrgs[JOY].balanceOrg
        
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        var asuBalance = allOrgs.discOrgs[ASU].balanceOrg

        if (orgNameDisplay.text! == karibuName) {
            orgNameDisplay.text! = karibuName
            dollarAmount.text! = "$\(karibuBalance)"
        } else if (orgNameDisplay.text! == csaName) {
            orgNameDisplay.text! = csaName
            dollarAmount.text! = "$\(csaBalance)"
        } else if (orgNameDisplay.text! == cccName) {
            orgNameDisplay.text! = cccName
            dollarAmount.text! = "$\(cccBalance)"
        } else if (orgNameDisplay.text! == cubeName) {
            orgNameDisplay.text! = cubeName
            dollarAmount.text! = "$\(cubeBalance)"
        } else if (orgNameDisplay.text! == hcoName) {
            orgNameDisplay.text! = hcoName
            dollarAmount.text! = "$\(hcoBalance)"
        } else if (orgNameDisplay.text! == presenteName) {
            orgNameDisplay.text! = presenteName
            dollarAmount.text! = "$\(presenteBalance)"
        } else if (orgNameDisplay.text! == presenteName) {
            orgNameDisplay.text! = presenteName
            dollarAmount.text! = "$\(presenteBalance)"
        } else if (orgNameDisplay.text! == kcaName) {
            orgNameDisplay.text! = kcaName
            dollarAmount.text! = "$\(kcaBalance)"
        } else if (orgNameDisplay.text! == teamtibetName) {
            orgNameDisplay.text! = teamtibetName
            dollarAmount.text! = "$\(teamtibetBalance)"
        } else if (orgNameDisplay.text! == voiceName) {
            orgNameDisplay.text! = voiceName
            dollarAmount.text! = "$\(voiceBalance)"
        } else if (orgNameDisplay.text! == eccaName) {
            orgNameDisplay.text! = eccaName
            dollarAmount.text! = "$\(eccaBalance)"
        } else if (orgNameDisplay.text! == acaName) {
            orgNameDisplay.text! = acaName
            dollarAmount.text! = "$\(acaBalance)"
        } else if (orgNameDisplay.text! == isoName) {
            orgNameDisplay.text! = isoName
            dollarAmount.text! = "$\(isoBalance)"
        } else if (orgNameDisplay.text! == ppName) {
            orgNameDisplay.text! = ppName
            dollarAmount.text! = "$\(ppBalance)"
        } else if (orgNameDisplay.text! == joyName) {
            orgNameDisplay.text! = joyName
            dollarAmount.text = "$\(joyBalance)"
        } else if (orgNameDisplay.text! == asuName) {
            orgNameDisplay.text! = asuName
            dollarAmount.text! = "$\(asuBalance)"
        }
    }
    
    
    // What happens with the data that is received
    func dataSentBack(deposit: Double, orgName: String) {
        
        // Manipulate Org Name and Balances
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        var karibuBalance = allOrgs.discOrgs[Karibu].balanceOrg
        
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        var csaBalance = allOrgs.discOrgs[CSA].balanceOrg
        
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        var cccBalance = allOrgs.discOrgs[CCC].balanceOrg
        
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        var cubeBalance = allOrgs.discOrgs[CUBE].balanceOrg
        
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        var hcoBalance = allOrgs.discOrgs[HCO].balanceOrg
        
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        var presenteBalance = allOrgs.discOrgs[Presente].balanceOrg
        
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        var kcaBalance = allOrgs.discOrgs[KCA].balanceOrg
        
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        var teamtibetBalance = allOrgs.discOrgs[TeamTibet].balanceOrg
        
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        var voiceBalance = allOrgs.discOrgs[Voice].balanceOrg
        
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        var eccaBalance = allOrgs.discOrgs[ECCA].balanceOrg
        
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        var acaBalance = allOrgs.discOrgs[ACA].balanceOrg
        
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        var isoBalance = allOrgs.discOrgs[ISO].balanceOrg
        
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        var ppBalance = allOrgs.discOrgs[PamilaPinoy].balanceOrg
        
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        var joyBalance = allOrgs.discOrgs[JOY].balanceOrg
        
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        var asuBalance = allOrgs.discOrgs[ASU].balanceOrg

        if (orgName == karibuName) {
            var currentBalane = karibuBalance
            currentBalane += deposit
//            karibuBalance += deposit
            dollarAmount.text! = "$\(karibuBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "karibuAmount")
        } else if (orgName == csaName) {
            allOrgs.discOrgs[CSA].balanceOrg += deposit
            dollarAmount.text! = "$\(allOrgs.discOrgs[CSA].balanceOrg)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "csaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CSA].balanceOrg, forKey: "newCSABalance")
        } else if (orgName == cccName) {
            cccBalance += deposit
            dollarAmount.text! = "$\(cccBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "cccAmount")
        } else if (orgName == cubeName) {
            cubeBalance += deposit
            dollarAmount.text! = "$\(cubeBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "cubeAmount")
        } else if (orgName == hcoName) {
            hcoBalance += deposit
            dollarAmount.text! = "$\(hcoBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "hcoAmount")
        } else if (orgName == presenteName) {
            presenteBalance += deposit
            dollarAmount.text! = "$\(presenteBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "presenteAmount")
        } else if (orgName == kcaName) {
            kcaBalance += deposit
            dollarAmount.text! = "$\(kcaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "kcaAmount")
        } else if (orgName == teamtibetName) {
            teamtibetBalance += deposit
            dollarAmount.text! = "$\(teamtibetBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "teamtibetAmount")
        } else if (orgName == voiceName) {
            voiceBalance += deposit
            dollarAmount.text! = "$\(voiceBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "voiceAmount")
        } else if (orgName == eccaName) {
            eccaBalance += deposit
            dollarAmount.text! = "$\(eccaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "eccaAmount")
        } else if (orgName == acaName) {
            acaBalance += deposit
            dollarAmount.text! = "$\(acaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "acaAmount")
        } else if (orgName == isoName) {
            isoBalance += deposit
            dollarAmount.text! = "$\(isoBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "isoAmount")
        } else if (orgName == ppName) {
            ppBalance += deposit
            dollarAmount.text! = "$\(ppBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "ppAmount")
        } else if (orgName == joyName) {
            joyBalance += deposit
            dollarAmount.text! = "$\(joyBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "joyAmount")
        } else if (orgName == asuName) {
            asuBalance += deposit
            dollarAmount.text! = "$\(asuBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "asuAmount")
        }
        
    }
    
    func withdrawDataSentBack(withdraw: Double, orgName: String) {
        
        // Manipulate Org Name and Balances
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        var karibuBalance = allOrgs.discOrgs[Karibu].balanceOrg
        
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        var csaBalance = allOrgs.discOrgs[CSA].balanceOrg
        
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        var cccBalance = allOrgs.discOrgs[CCC].balanceOrg
        
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        var cubeBalance = allOrgs.discOrgs[CUBE].balanceOrg
        
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        var hcoBalance = allOrgs.discOrgs[HCO].balanceOrg
        
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        var presenteBalance = allOrgs.discOrgs[Presente].balanceOrg
        
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        var kcaBalance = allOrgs.discOrgs[KCA].balanceOrg
        
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        var teamtibetBalance = allOrgs.discOrgs[TeamTibet].balanceOrg
        
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        var voiceBalance = allOrgs.discOrgs[Voice].balanceOrg
        
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        var eccaBalance = allOrgs.discOrgs[ECCA].balanceOrg
        
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        var acaBalance = allOrgs.discOrgs[ACA].balanceOrg
        
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        var isoBalance = allOrgs.discOrgs[ISO].balanceOrg
        
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        var ppBalance = allOrgs.discOrgs[PamilaPinoy].balanceOrg
        
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        var joyBalance = allOrgs.discOrgs[JOY].balanceOrg
        
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        var asuBalance = allOrgs.discOrgs[ASU].balanceOrg
        
        if (orgName == karibuName) {
            karibuBalance -= withdraw
            dollarAmount.text! = "$\(karibuBalance)" 
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawKaribuAmount")
        } else if (orgName == csaName) {
            csaBalance -= withdraw
            dollarAmount.text! = "$\(csaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawCsaAmount")
        } else if (orgName == cccName) {
            cccBalance -= withdraw
            dollarAmount.text! = "$\(cccBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawCccAmount")
        } else if (orgName == cubeName) {
            cubeBalance -= withdraw
            dollarAmount.text! = "$\(cubeBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawCubeAmount")
        } else if (orgName == hcoName) {
            hcoBalance -= withdraw
            dollarAmount.text! = "$\(hcoBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawHcoAmount")
        } else if (orgName == presenteName) {
            presenteBalance -= withdraw
            dollarAmount.text! = "$\(presenteBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawPresenteAmount")
        } else if (orgName == kcaName) {
            kcaBalance -= withdraw
            dollarAmount.text! = "$\(kcaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawKcaAmount")
        } else if (orgName == teamtibetName) {
            teamtibetBalance -= withdraw
            dollarAmount.text! = "$\(teamtibetBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawTeamtibetAmount")
        } else if (orgName == voiceName) {
            voiceBalance -= withdraw
            dollarAmount.text! = "$\(voiceBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawVoiceAmount")
        } else if (orgName == eccaName) {
            eccaBalance -= withdraw
            dollarAmount.text! = "$\(eccaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawEccaAmount")
        } else if (orgName == acaName) {
            acaBalance -= withdraw
            dollarAmount.text! = "$\(acaBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawAcaAmount")
        } else if (orgName == isoName) {
            isoBalance -= withdraw
            dollarAmount.text! = "$\(isoBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawIsoAmount")
        } else if (orgName == ppName) {
            ppBalance -= withdraw
            dollarAmount.text! = "$\(ppBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawPpAmount")
        } else if (orgName == joyName) {
            joyBalance -= withdraw
            dollarAmount.text! = "$\(joyBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawJoyAmount")
        } else if (orgName == asuName) {
            asuBalance -= withdraw
            dollarAmount.text! = "$\(asuBalance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "wdrawAsuAmount")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Manipulate Org Name and Balances
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        var karibuBalance = allOrgs.discOrgs[Karibu].balanceOrg
        
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        var csaBalance = allOrgs.discOrgs[CSA].balanceOrg
        
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        var cccBalance = allOrgs.discOrgs[CCC].balanceOrg
        
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        var cubeBalance = allOrgs.discOrgs[CUBE].balanceOrg
        
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        var hcoBalance = allOrgs.discOrgs[HCO].balanceOrg
        
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        var presenteBalance = allOrgs.discOrgs[Presente].balanceOrg
        
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        var kcaBalance = allOrgs.discOrgs[KCA].balanceOrg
        
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        var teamtibetBalance = allOrgs.discOrgs[TeamTibet].balanceOrg
        
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        var voiceBalance = allOrgs.discOrgs[Voice].balanceOrg
        
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        var eccaBalance = allOrgs.discOrgs[ECCA].balanceOrg
        
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        var acaBalance = allOrgs.discOrgs[ACA].balanceOrg
        
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        var isoBalance = allOrgs.discOrgs[ISO].balanceOrg
        
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        var ppBalance = allOrgs.discOrgs[PamilaPinoy].balanceOrg
        
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        var joyBalance = allOrgs.discOrgs[JOY].balanceOrg
        
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        var asuBalance = allOrgs.discOrgs[ASU].balanceOrg

        
        if (orgNameDisplay.text! == karibuName) {
            if let x = UserDefaults.standard.object(forKey: "karibuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCSABalance") as? Double {
                allOrgs.discOrgs[CSA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == csaName) {
            if let x = UserDefaults.standard.object(forKey: "csaAmount") as? String {
                dollarAmount.text! = x
            }
        } else if (orgNameDisplay.text! == cccName) {
            if let x = UserDefaults.standard.object(forKey: "cccAmount") as? String {
                dollarAmount.text! = x
            }
        } else if (orgNameDisplay.text! == cubeName) {
            if let x = UserDefaults.standard.object(forKey: "cubeAmount") as? String {
                dollarAmount.text! = x
            }
        } else if (orgNameDisplay.text! == hcoName) {
            if let x = UserDefaults.standard.object(forKey: "hcoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawHcoAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == presenteName) {
            if let x = UserDefaults.standard.object(forKey: "presenteAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawPresenteAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == kcaName) {
            if let x = UserDefaults.standard.object(forKey: "kcaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawKcaAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == teamtibetName) {
            if let x = UserDefaults.standard.object(forKey: "teamtibetAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawTeamtibetAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == voiceName) {
            if let x = UserDefaults.standard.object(forKey: "voiceAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawVoiceAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == eccaName) {
            if let x = UserDefaults.standard.object(forKey: "eccaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawEccaAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == acaName) {
            if let x = UserDefaults.standard.object(forKey: "acaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawAcaAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == isoName) {
            if let x = UserDefaults.standard.object(forKey: "isoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawIsoAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == ppName) {
            if let x = UserDefaults.standard.object(forKey: "ppAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawPpAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == joyName) {
            if let x = UserDefaults.standard.object(forKey: "joyAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawJoyAmount") as? String {
                dollarAmount.text! = y
            }
        } else if (orgNameDisplay.text! == asuName) {
            if let x = UserDefaults.standard.object(forKey: "asuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "wdrawAsuAmount") as? String {
                dollarAmount.text! = y
            }
        }
        
        
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func withdrawBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "orgToWithdraw", sender: self)
    }
    
    @IBAction func depositBtnPressed(_ sender: Any) {

        performSegue(withIdentifier: "orgToDeposit", sender: self)
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "orgToDeposit" {
//
//        }
//    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "orgToDisplay":
            let wrapBalance = Org?.balanceOrg
            let nextVC = segue.destination as! DepositVC
            nextVC.amountPassed = wrapBalance!
            nextVC.namePassed = (Org?.nameOrg)!
            nextVC.delegate = self
            break
        case "orgToWithDraw":
            let wrapBalance = Org?.balanceOrg
            let nextVC = segue.destination as! WithdrawVC
            nextVC.withdrawAmountPassed = wrapBalance!
            nextVC.oNamePassed = (Org?.nameOrg)!
            nextVC.delegate = self
            break
        default:
            break
        }
    }
}

