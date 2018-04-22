//
//  ViewController.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 22/04/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var persoon = Persoon()
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var naamLbl: UILabel!
    @IBOutlet weak var voornaamLbl: UILabel!
    
    @IBOutlet weak var telLbl: UILabel!
    @IBOutlet weak var adresLbl: UILabel!
    @IBOutlet weak var gemeenteLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.naamLbl.text = persoon.naam.capitalized
    self.voornaamLbl.text = persoon.voornaam.capitalized
    self.telLbl.text = persoon.telefoonnummer
    self.adresLbl.text = persoon.straatnummer
    self.gemeenteLbl.text = persoon.gemeentepostcode
    self.imgView.image = UIImage(named: persoon.foto)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

