//
//  OrgPageVC.swift
//  STOtrack
//
//  Created by Norman Buruchara on 9/18/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import UIKit
import FirebaseDatabase


class OrgPageVC: UIViewController, depositSentBack, withdrawSentBack {


    //Firebase Database Setup
    var ref: DatabaseReference!
    var databaseHandle:DatabaseHandle?
    
    // Organization Initialization
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
    let VNO: Int = 15
    let GLOW: Int = 16
    let SOMOS: Int = 17
    
    @IBOutlet weak var dollarAmount: UILabel!
    @IBOutlet weak var orgNameDisplay: UILabel!
    @IBOutlet weak var depositedAmount: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Firebase Reference
        ref  = Database.database().reference()
        
        orgNameDisplay.text! = "\(Org?.nameOrg as! String)"
        dollarAmount.text! = "$\(Org?.balanceOrg as! Double)"

        
        if (orgNameDisplay.text! == "Karibu") {
            databaseHandle = ref?.child("Karibu Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
                

            })
        } else if (orgNameDisplay.text! == "CSA" || orgNameDisplay.text! == "Celebrate South Asia") {
            databaseHandle = ref?.child("CSA Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "CCC" || orgNameDisplay.text! == "Chinese Cultural Club") {
            databaseHandle = ref?.child("CCC Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "Cube" || orgNameDisplay.text! == "Cultural Union of Black Expression") {
            databaseHandle = ref?.child("Cube Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "HCO" || orgNameDisplay.text! == "Hmong Cultural Organization") {
            databaseHandle = ref?.child("HCO Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "Presente") {
            databaseHandle = ref?.child("Presente Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "KCA" || orgNameDisplay.text! == "Korean Cultural Association") {
            databaseHandle = ref?.child("KCA Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "Team Tibet") {
            databaseHandle = ref?.child("Team Tibet Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "Voice") {
            databaseHandle = ref?.child("Voice Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "ECCA" || orgNameDisplay.text! == "Europe Caucasus & Central Asia") {
            databaseHandle = ref?.child("ECCA Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "ACA" || orgNameDisplay.text! == "Arab Cultural Association") {
            databaseHandle = ref?.child("ACA Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "ISO" || orgNameDisplay.text! == "International Student Organization") {
            databaseHandle = ref?.child("ISO Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "Pamila Pinoy") {
            databaseHandle = ref?.child("Pamila Pinoy Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "JOY" || orgNameDisplay.text! == "Japanese Organization Yay") {
            databaseHandle = ref?.child("JOY Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "ASU" || orgNameDisplay.text! == "Asian-American Student Union") {
            databaseHandle = ref?.child("ASU Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "VNO" || orgNameDisplay.text! == "Vietnamese Organization") {
            databaseHandle = ref?.child("VNO Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "GLOW" || orgNameDisplay.text! == "Gay Lesbian Or Whatever") {
            databaseHandle = ref?.child("GLOW Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        } else if (orgNameDisplay.text! == "SOMOS" || orgNameDisplay.text! == "Somos") {
            databaseHandle = ref?.child("SOMOS Balance").observe(.childAdded, with: { (snapshot) in
                self.dollarAmount.text! = "$\((snapshot.value as? String)!)"
            })
        }
        
        // Organization Names:
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        //VNO
        let vnoName = allOrgs.discOrgs[VNO].nameOrg
        // GLOW
        let glowName = allOrgs.discOrgs[GLOW].nameOrg
        // SOMOS
        let somosName = allOrgs.discOrgs[SOMOS].nameOrg
        
        // Saving Data
        if (orgNameDisplay.text! == karibuName) {
            if let x = UserDefaults.standard.object(forKey: "karibuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newKaribuBalance") as? Double {
                allOrgs.discOrgs[Karibu].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == csaName) {
            if let x = UserDefaults.standard.object(forKey: "csaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCSABalance") as? Double {
                allOrgs.discOrgs[CSA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == cccName) {
            if let x = UserDefaults.standard.object(forKey: "cccAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCCCBalance") as? Double {
                allOrgs.discOrgs[CCC].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == cubeName) {
            if let x = UserDefaults.standard.object(forKey: "cubeAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCubeBalance") as? Double {
                allOrgs.discOrgs[CUBE].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == hcoName) {
            if let x = UserDefaults.standard.object(forKey: "hcoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newHCOBalance") as? Double {
                allOrgs.discOrgs[HCO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == presenteName) {
            if let x = UserDefaults.standard.object(forKey: "presenteAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newPresenteBalance") as? Double {
                allOrgs.discOrgs[Presente].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == kcaName) {
            if let x = UserDefaults.standard.object(forKey: "kcaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newKCABalance") as? Double {
                allOrgs.discOrgs[KCA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == teamtibetName) {
            if let x = UserDefaults.standard.object(forKey: "teamtibetAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newTeamTibetBalance") as? Double {
                allOrgs.discOrgs[TeamTibet].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == voiceName) {
            if let x = UserDefaults.standard.object(forKey: "voiceAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newVoiceBalance") as? Double {
                allOrgs.discOrgs[Voice].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == eccaName) {
            if let x = UserDefaults.standard.object(forKey: "eccaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newEccaBalance") as? Double {
                allOrgs.discOrgs[ECCA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == acaName) {
            if let x = UserDefaults.standard.object(forKey: "acaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newACABalance") as? Double {
                allOrgs.discOrgs[ACA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == isoName) {
            if let x = UserDefaults.standard.object(forKey: "isoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newISOBalance") as? Double {
                allOrgs.discOrgs[ISO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == ppName) {
            if let x = UserDefaults.standard.object(forKey: "ppAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newPamilaPinoyBalance") as? Double {
                allOrgs.discOrgs[PamilaPinoy].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == joyName) {
            if let x = UserDefaults.standard.object(forKey: "joyAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newJOYBalance") as? Double {
                allOrgs.discOrgs[JOY].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == asuName) {
            if let x = UserDefaults.standard.object(forKey: "asuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newASUBalance") as? Double {
                allOrgs.discOrgs[ASU].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == vnoName) {
            if let x = UserDefaults.standard.object(forKey: "vnoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newVNOBalance") as? Double {
                allOrgs.discOrgs[VNO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == glowName) {
            if let x = UserDefaults.standard.object(forKey: "glowAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newGLOWBalance") as? Double {
                allOrgs.discOrgs[GLOW].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == somosName) {
            if let x = UserDefaults.standard.object(forKey: "somosAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newSOMOSBalance") as? Double {
                allOrgs.discOrgs[SOMOS].balanceOrg = y
            }
        }
       
    }
    
    // What happens with the data that is received
    func dataSentBack(deposit: Double, orgName: String) {
        
        // Organization Names:
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        //VNO
        let vnoName = allOrgs.discOrgs[VNO].nameOrg
        // GLOW
        let glowName = allOrgs.discOrgs[GLOW].nameOrg
        // SOMOS
        let somosName = allOrgs.discOrgs[SOMOS].nameOrg
        
        if (orgName == karibuName) {
            allOrgs.discOrgs[Karibu].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[Karibu].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "karibuAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[Karibu].balanceOrg, forKey: "newKaribuBalance")
        } else if (orgName == csaName) {
            allOrgs.discOrgs[CSA].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[CSA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "csaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CSA].balanceOrg, forKey: "newCSABalance")
        } else if (orgName == cccName) {
            allOrgs.discOrgs[CCC].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[CCC].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "cccAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CCC].balanceOrg, forKey: "newCCCBalance")
        } else if (orgName == cubeName) {
            allOrgs.discOrgs[CUBE].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[CUBE].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "cubeAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CUBE].balanceOrg, forKey: "newCubeBalance")
        } else if (orgName == hcoName) {
            allOrgs.discOrgs[HCO].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[HCO].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "hcoAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[HCO].balanceOrg, forKey: "newHCOBalance")
        } else if (orgName == presenteName) {
            allOrgs.discOrgs[Presente].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[Presente].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "presenteAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[Presente].balanceOrg, forKey: "newPresenteBalance")
        } else if (orgName == kcaName) {
            allOrgs.discOrgs[KCA].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[KCA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "kcaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[KCA].balanceOrg, forKey: "newKCBalance")
        } else if (orgName == teamtibetName) {
            allOrgs.discOrgs[TeamTibet].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[TeamTibet].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "teamtibetAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[TeamTibet].balanceOrg, forKey: "newTeamTibetBalance")
        } else if (orgName == voiceName) {
            allOrgs.discOrgs[Voice].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[Voice].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "voiceAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[Voice].balanceOrg, forKey: "newVoiceBalance")
        } else if (orgName == eccaName) {
            allOrgs.discOrgs[ECCA].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ECCA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "eccaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ECCA].balanceOrg, forKey: "newEccaBalance")
        } else if (orgName == acaName) {
            allOrgs.discOrgs[ACA].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ACA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "acaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ACA].balanceOrg, forKey: "newACABalance")
        } else if (orgName == isoName) {
            allOrgs.discOrgs[ISO].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ISO].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "isoAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ISO].balanceOrg, forKey: "newISOBalance")
        } else if (orgName == ppName) {
            allOrgs.discOrgs[PamilaPinoy].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[PamilaPinoy].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "ppAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[PamilaPinoy].balanceOrg, forKey: "newPamilaPinoyBalance")
        } else if (orgName == joyName) {
            allOrgs.discOrgs[JOY].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[JOY].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "joyAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[JOY].balanceOrg, forKey: "newJOYBalance")
        } else if (orgName == asuName) {
            allOrgs.discOrgs[ASU].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ASU].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "asuAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ASU].balanceOrg, forKey: "newASUBalance")
        } else if (orgName == vnoName) {
            allOrgs.discOrgs[VNO].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[VNO].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "vnoAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[VNO].balanceOrg, forKey: "newVNOBalance")
        } else if (orgName == glowName) {
            allOrgs.discOrgs[GLOW].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[GLOW].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "glowAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[GLOW].balanceOrg, forKey: "newGLOWBalance")
        } else if (orgName == somosName) {
            allOrgs.discOrgs[SOMOS].balanceOrg += deposit
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[SOMOS].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "somosAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[SOMOS].balanceOrg, forKey: "newSOMOSBalance")
        }
        
        
        if (orgNameDisplay.text! == karibuName) {
            if let x = UserDefaults.standard.object(forKey: "karibuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newKaribuBalance") as? Double {
                allOrgs.discOrgs[Karibu].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == csaName) {
            if let x = UserDefaults.standard.object(forKey: "csaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCSABalance") as? Double {
                allOrgs.discOrgs[CSA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == cccName) {
            if let x = UserDefaults.standard.object(forKey: "cccAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCCCBalance") as? Double {
                allOrgs.discOrgs[CCC].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == cubeName) {
            if let x = UserDefaults.standard.object(forKey: "cubeAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCubeBalance") as? Double {
                allOrgs.discOrgs[CUBE].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == hcoName) {
            if let x = UserDefaults.standard.object(forKey: "hcoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newHCOBalance") as? Double {
                allOrgs.discOrgs[HCO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == presenteName) {
            if let x = UserDefaults.standard.object(forKey: "presenteAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newPresenteBalance") as? Double {
                allOrgs.discOrgs[Presente].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == kcaName) {
            if let x = UserDefaults.standard.object(forKey: "kcaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newKCABalance") as? Double {
                allOrgs.discOrgs[KCA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == teamtibetName) {
            if let x = UserDefaults.standard.object(forKey: "teamtibetAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newTeamTibetBalance") as? Double {
                allOrgs.discOrgs[TeamTibet].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == voiceName) {
            if let x = UserDefaults.standard.object(forKey: "voiceAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newVoiceBalance") as? Double {
                allOrgs.discOrgs[Voice].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == eccaName) {
            if let x = UserDefaults.standard.object(forKey: "eccaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newEccaBalance") as? Double {
                allOrgs.discOrgs[ECCA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == acaName) {
            if let x = UserDefaults.standard.object(forKey: "acaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newACABalance") as? Double {
                allOrgs.discOrgs[ACA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == isoName) {
            if let x = UserDefaults.standard.object(forKey: "isoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newISOBalance") as? Double {
                allOrgs.discOrgs[ISO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == ppName) {
            if let x = UserDefaults.standard.object(forKey: "ppAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newPamilaPinoyBalance") as? Double {
                allOrgs.discOrgs[PamilaPinoy].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == joyName) {
            if let x = UserDefaults.standard.object(forKey: "joyAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newJOYBalance") as? Double {
                allOrgs.discOrgs[JOY].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == asuName) {
            if let x = UserDefaults.standard.object(forKey: "asuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newASUBalance") as? Double {
                allOrgs.discOrgs[ASU].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == vnoName) {
            if let x = UserDefaults.standard.object(forKey: "vnoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newVNOBalance") as? Double {
                allOrgs.discOrgs[VNO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == glowName) {
            if let x = UserDefaults.standard.object(forKey: "glowAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newGLOWBalance") as? Double {
                allOrgs.discOrgs[GLOW].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == somosName) {
            if let x = UserDefaults.standard.object(forKey: "somosAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newSOMOSBalance") as? Double {
                allOrgs.discOrgs[SOMOS].balanceOrg = y
            }
        }

        // Saving data to Database & Retreiving data changed by other execs
        if (orgNameDisplay.text! == karibuName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[Karibu].balanceOrg)
            ref?.child("Karibu Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == csaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[CSA].balanceOrg)
            ref?.child("CSA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == cccName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[CCC].balanceOrg)
            ref?.child("CCC Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == cubeName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[CUBE].balanceOrg)
            ref?.child("Cube Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == hcoName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[HCO].balanceOrg)
            ref?.child("HCO Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == presenteName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[Presente].balanceOrg)
            ref?.child("Presente Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == kcaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[KCA].balanceOrg)
            ref?.child("KCA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == teamtibetName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[TeamTibet].balanceOrg)
            ref?.child("Team Tibet Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == voiceName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[Voice].balanceOrg)
            ref?.child("Voice Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == eccaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ECCA].balanceOrg)
            ref?.child("ECCA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == acaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ACA].balanceOrg)
            ref?.child("ACA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == isoName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ISO].balanceOrg)
            ref?.child("ISO Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == ppName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[PamilaPinoy].balanceOrg)
            ref?.child("Pamila Pinoy Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == joyName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[JOY].balanceOrg)
            ref?.child("JOY Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == asuName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ASU].balanceOrg)
            ref?.child("ASU Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == vnoName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[VNO].balanceOrg)
            ref?.child("VNO Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == glowName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[GLOW].balanceOrg)
            ref?.child("GLOW Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == somosName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[SOMOS].balanceOrg)
            ref?.child("SOMOS Balance").childByAutoId().setValue("\(rounded_value)")
        }
        
    }
    
    func withdrawDataSentBack(withdraw: Double, orgName: String) {
        
        // Manipulate Org Name and Balances
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        //VNO
        let vnoName = allOrgs.discOrgs[VNO].nameOrg
        // GLOW
        let glowName = allOrgs.discOrgs[GLOW].nameOrg
        // SOMOS
        let somosName = allOrgs.discOrgs[SOMOS].nameOrg

        // Withdraw code
        if (orgName == karibuName) {
            allOrgs.discOrgs[Karibu].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[Karibu].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(allOrgs.discOrgs[Karibu].balanceOrg, forKey: "newKaribuBalance")
            UserDefaults.standard.set(dollarAmount.text!, forKey: "karibuAmount")
        } else if (orgName == csaName) {
            allOrgs.discOrgs[CSA].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[CSA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "csaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CSA].balanceOrg, forKey: "newCSABalance")
        } else if (orgName == cccName) {
            allOrgs.discOrgs[CCC].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[CCC].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "cccAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CCC].balanceOrg, forKey: "newCCCBalance")
        } else if (orgName == cubeName) {
            allOrgs.discOrgs[CUBE].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[CUBE].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "cubeAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[CUBE].balanceOrg, forKey: "newCubeBalance")
        } else if (orgName == hcoName) {
            allOrgs.discOrgs[HCO].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[HCO].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "hcoAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[HCO].balanceOrg, forKey: "newHCOBalance")
        } else if (orgName == presenteName) {
            allOrgs.discOrgs[Presente].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[Presente].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "presenteAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[Presente].balanceOrg, forKey: "newPresenteBalance")
        } else if (orgName == kcaName) {
            allOrgs.discOrgs[KCA].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[KCA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "kcaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[KCA].balanceOrg, forKey: "newKCBalance")
        } else if (orgName == teamtibetName) {
            allOrgs.discOrgs[TeamTibet].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[TeamTibet].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "teamtibetAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[TeamTibet].balanceOrg, forKey: "newTeamTibetBalance")
        } else if (orgName == voiceName) {
            allOrgs.discOrgs[Voice].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[Voice].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "voiceAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[Voice].balanceOrg, forKey: "newVoiceBalance")
        } else if (orgName == eccaName) {
            allOrgs.discOrgs[ECCA].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ECCA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "eccaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ECCA].balanceOrg, forKey: "newEccaBalance")
        } else if (orgName == acaName) {
            allOrgs.discOrgs[ACA].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ACA].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "acaAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ACA].balanceOrg, forKey: "newACABalance")
        } else if (orgName == isoName) {
            allOrgs.discOrgs[ISO].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ISO].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "isoAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ISO].balanceOrg, forKey: "newISOBalance")
        } else if (orgName == ppName) {
            allOrgs.discOrgs[PamilaPinoy].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[PamilaPinoy].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "ppAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[PamilaPinoy].balanceOrg, forKey: "newPamilaPinoyBalance")
        } else if (orgName == joyName) {
            allOrgs.discOrgs[JOY].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[JOY].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "joyAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[JOY].balanceOrg, forKey: "newJOYBalance")
        } else if (orgName == asuName) {
            allOrgs.discOrgs[ASU].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[ASU].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "asuAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[ASU].balanceOrg, forKey: "newASUBalance")
        } else if (orgName == vnoName) {
            allOrgs.discOrgs[VNO].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[VNO].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "vnoAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[VNO].balanceOrg, forKey: "newVNOBalance")
        } else if (orgName == glowName) {
            allOrgs.discOrgs[GLOW].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[GLOW].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "glowAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[GLOW].balanceOrg, forKey: "newGLOWBalance")
        } else if (orgName == somosName) {
            allOrgs.discOrgs[SOMOS].balanceOrg -= withdraw
            let rounded_balance = String(format: "%.2f", allOrgs.discOrgs[SOMOS].balanceOrg)
            dollarAmount.text! = "$\(rounded_balance)"
            UserDefaults.standard.set(dollarAmount.text!, forKey: "somosAmount")
            UserDefaults.standard.set(allOrgs.discOrgs[SOMOS].balanceOrg, forKey: "newSOMOSBalance")
        }
        
        if (orgNameDisplay.text! == karibuName) {
            if let x = UserDefaults.standard.object(forKey: "karibuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newKaribuBalance") as? Double {
                allOrgs.discOrgs[Karibu].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == csaName) {
            if let x = UserDefaults.standard.object(forKey: "csaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCSABalance") as? Double {
                allOrgs.discOrgs[CSA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == cccName) {
            if let x = UserDefaults.standard.object(forKey: "cccAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCCCBalance") as? Double {
                allOrgs.discOrgs[CCC].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == cubeName) {
            if let x = UserDefaults.standard.object(forKey: "cubeAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newCubeBalance") as? Double {
                allOrgs.discOrgs[CUBE].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == hcoName) {
            if let x = UserDefaults.standard.object(forKey: "hcoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newHCOBalance") as? Double {
                allOrgs.discOrgs[HCO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == presenteName) {
            if let x = UserDefaults.standard.object(forKey: "presenteAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newPresenteBalance") as? Double {
                allOrgs.discOrgs[Presente].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == kcaName) {
            if let x = UserDefaults.standard.object(forKey: "kcaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newKCABalance") as? Double {
                allOrgs.discOrgs[KCA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == teamtibetName) {
            if let x = UserDefaults.standard.object(forKey: "teamtibetAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newTeamTibetBalance") as? Double {
                allOrgs.discOrgs[TeamTibet].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == voiceName) {
            if let x = UserDefaults.standard.object(forKey: "voiceAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newVoiceBalance") as? Double {
                allOrgs.discOrgs[Voice].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == eccaName) {
            if let x = UserDefaults.standard.object(forKey: "eccaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newEccaBalance") as? Double {
                allOrgs.discOrgs[ECCA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == acaName) {
            if let x = UserDefaults.standard.object(forKey: "acaAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newACABalance") as? Double {
                allOrgs.discOrgs[ACA].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == isoName) {
            if let x = UserDefaults.standard.object(forKey: "isoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newISOBalance") as? Double {
                allOrgs.discOrgs[ISO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == ppName) {
            if let x = UserDefaults.standard.object(forKey: "ppAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newPamilaPinoyBalance") as? Double {
                allOrgs.discOrgs[PamilaPinoy].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == joyName) {
            if let x = UserDefaults.standard.object(forKey: "joyAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newJOYBalance") as? Double {
                allOrgs.discOrgs[JOY].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == asuName) {
            if let x = UserDefaults.standard.object(forKey: "asuAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newASUBalance") as? Double {
                allOrgs.discOrgs[ASU].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == vnoName) {
            if let x = UserDefaults.standard.object(forKey: "vnoAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newVNOBalance") as? Double {
                allOrgs.discOrgs[VNO].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == glowName) {
            if let x = UserDefaults.standard.object(forKey: "glowAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newGLOWBalance") as? Double {
                allOrgs.discOrgs[GLOW].balanceOrg = y
            }
        } else if (orgNameDisplay.text! == somosName) {
            if let x = UserDefaults.standard.object(forKey: "somosAmount") as? String {
                dollarAmount.text! = x
            }
            if let y = UserDefaults.standard.object(forKey: "newSOMOSBalance") as? Double {
                allOrgs.discOrgs[SOMOS].balanceOrg = y
            }
        }
        
        
        // Saving data to Database
        if (orgNameDisplay.text! == karibuName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[Karibu].balanceOrg)
            ref?.child("Karibu Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == csaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[CSA].balanceOrg)
            ref?.child("CSA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == cccName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[CCC].balanceOrg)
            ref?.child("CCC Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == cubeName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[CUBE].balanceOrg)
            ref?.child("Cube Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == hcoName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[HCO].balanceOrg)
            ref?.child("HCO Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == presenteName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[Presente].balanceOrg)
            ref?.child("Presente Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == kcaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[KCA].balanceOrg)
            ref?.child("KCA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == teamtibetName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[TeamTibet].balanceOrg)
            ref?.child("Team Tibet Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == voiceName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[Voice].balanceOrg)
            ref?.child("Voice Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == eccaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ECCA].balanceOrg)
            ref?.child("ECCA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == acaName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ACA].balanceOrg)
            ref?.child("ACA Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == isoName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ISO].balanceOrg)
            ref?.child("ISO Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == ppName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[PamilaPinoy].balanceOrg)
            ref?.child("Pamila Pinoy Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == joyName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[JOY].balanceOrg)
            ref?.child("JOY Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == asuName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[ASU].balanceOrg)
            ref?.child("ASU Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == vnoName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[VNO].balanceOrg)
            ref?.child("VNO Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == glowName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[GLOW].balanceOrg)
            ref?.child("GLOW Balance").childByAutoId().setValue("\(rounded_value)")
        } else if (orgNameDisplay.text! == somosName) {
            let rounded_value = String(format: "%.2f", allOrgs.discOrgs[SOMOS].balanceOrg)
            ref?.child("SOMOS Balance").childByAutoId().setValue("\(rounded_value)")
        }
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Manipulate Org Name and Balances
        
        // Karibu:
        let karibuName = allOrgs.discOrgs[Karibu].nameOrg
        // CSA:
        let csaName = allOrgs.discOrgs[CSA].nameOrg
        // CCC:
        let cccName = allOrgs.discOrgs[CCC].nameOrg
        // CUBE:
        let cubeName = allOrgs.discOrgs[CUBE].nameOrg
        // HCO:
        let hcoName = allOrgs.discOrgs[HCO].nameOrg
        // Presente
        let presenteName = allOrgs.discOrgs[Presente].nameOrg
        // KCA
        let kcaName = allOrgs.discOrgs[KCA].nameOrg
        // Team Tibet
        let teamtibetName = allOrgs.discOrgs[TeamTibet].nameOrg
        // Voice
        let voiceName = allOrgs.discOrgs[Voice].nameOrg
        // ECCA
        let eccaName = allOrgs.discOrgs[ECCA].nameOrg
        // ACA
        let acaName = allOrgs.discOrgs[ACA].nameOrg
        // ISO
        let isoName = allOrgs.discOrgs[ISO].nameOrg
        // Pamila Pinoy
        let ppName = allOrgs.discOrgs[PamilaPinoy].nameOrg
        // JOY
        let joyName = allOrgs.discOrgs[JOY].nameOrg
        // ASU
        let asuName = allOrgs.discOrgs[ASU].nameOrg
        // VNO
        let vnoName = allOrgs.discOrgs[VNO].nameOrg
        // GLOW
        let glowName = allOrgs.discOrgs[GLOW].nameOrg
        // SOMOS
        let somosName = allOrgs.discOrgs[SOMOS].nameOrg

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
    
    
    @IBAction func transactionsButtonPressed(_ sender: Any) {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "orgToDeposit") {
            let wrapBalance = Org?.balanceOrg
            let nextVC = segue.destination as! DepositVC
            nextVC.amountPassed = wrapBalance!
            nextVC.namePassed = (Org?.nameOrg)!
            nextVC.delegate = self
        } else if (segue.identifier == "orgToWithdraw") {
            let wrapBalance = Org?.balanceOrg
            let nextVC = segue.destination as! WithdrawVC
            nextVC.withdrawAmountPassed = wrapBalance!
            nextVC.oNamePassed = (Org?.nameOrg)!
            nextVC.delegate = self
        } 
    }


}
