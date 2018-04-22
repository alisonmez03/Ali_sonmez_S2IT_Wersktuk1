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
    
    init() {
        naam = ""
        voornaam = ""
        foto = ""
        straatnummer = ""
        gemeentepostcode = ""
        telefoonnummer = ""
    }
    
    init(naam: String, voornaam:String, foto:String, straatnummer:String, gemeentepostcode:String, telefoonnummer:String){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.straatnummer = straatnummer
        self.gemeentepostcode = gemeentepostcode
        self.telefoonnummer = telefoonnummer
    }
}
