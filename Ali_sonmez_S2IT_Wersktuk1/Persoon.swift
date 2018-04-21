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
    
    init() {
        naam = ""
        voornaam = ""
        foto = ""
    }
    
    init(naam: String, voornaam:String, foto:String){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
    }
}
