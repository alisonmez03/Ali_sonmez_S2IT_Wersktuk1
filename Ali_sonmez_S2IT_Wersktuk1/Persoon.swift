//
//  Persoon.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 22/04/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//

import UIKit

class Persoon {
    var naam:String
    var voornaam:String
    var foto:String
    var straatnummer:String
    var gemeentepostcode:String
    var telefoonnummer:String
    var coordinaat1:Double
    var coordinaat2:Double
    
    init() {
        naam = ""
        voornaam = ""
        foto = ""
        straatnummer = ""
        gemeentepostcode = ""
        telefoonnummer = ""
        coordinaat1 = 0
        coordinaat2 = 0
    }
    
    init(naam: String, voornaam:String, foto:String, straatnummer:String, gemeentepostcode:String, telefoonnummer:String, coordinaat1:Double, coordinaat2:Double){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.straatnummer = straatnummer
        self.gemeentepostcode = gemeentepostcode
        self.telefoonnummer = telefoonnummer
        self.coordinaat1 = coordinaat1
        self.coordinaat2 = coordinaat2
    }
}
