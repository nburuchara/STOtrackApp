//
//  Organizations.swift
//  STOtrack
//
//  Created by Norman Buruchara on 11/12/18.
//  Copyright © 2018 Norman Buruchara. All rights reserved.
//

import Foundation


class Organizations {
    
    var discOrgs = [OrgDetails]() // object of Org Details

    init () {

        let Karibu = OrgDetails(oName: "Karibu", oBalance: 400.5)
        discOrgs.append(Karibu)
        
        let CSA = OrgDetails(oName: "Celebrate South Asia", oBalance: 345.7)
        discOrgs.append(CSA)
        
        let CCC = OrgDetails(oName: "Chinese Cultural Club", oBalance: 708.6)
        discOrgs.append(CCC)
        
        let CUBE = OrgDetails(oName: "Cultural Union of Black Expression", oBalance: 234.5)
        discOrgs.append(CUBE)
        
        let HCO = OrgDetails(oName: "Hmong Cultural Organization", oBalance: 450.4)
        discOrgs.append(HCO)
        
        let Presente = OrgDetails(oName: "¡Presente!", oBalance: 345.6)
        discOrgs.append(Presente)
        
        let KCA = OrgDetails(oName: "Korean Cultural Association", oBalance: 198.8)
        discOrgs.append(KCA)
        
        let TeamTibet = OrgDetails(oName: "Team Tibet", oBalance: 300.9)
        discOrgs.append(TeamTibet)
        
        let Voice = OrgDetails(oName: "VOICE", oBalance: 298.9)
        discOrgs.append(Voice)
        
        let ECCA = OrgDetails(oName: "Europe Caucasus & Central Asia", oBalance: 435.9)
        discOrgs.append(ECCA)
        
        let ACA = OrgDetails(oName: "Arab Cultural Association", oBalance: 753.2)
        discOrgs.append(ACA)
        
        let ISO = OrgDetails(oName: "International Student Organization", oBalance: 717.3)
        discOrgs.append(ISO)
        
        let PamilaPinoy = OrgDetails(oName: "Pamila Pinoy", oBalance: 477.8)
        discOrgs.append(PamilaPinoy)
        
        let JOY = OrgDetails(oName: "Japanese Organization Yay", oBalance: 999.9)
        discOrgs.append(JOY)
        
        let ASU = OrgDetails(oName: "Asian-American Student Union", oBalance: 453.2)
        discOrgs.append(ASU)
    
    }

}
