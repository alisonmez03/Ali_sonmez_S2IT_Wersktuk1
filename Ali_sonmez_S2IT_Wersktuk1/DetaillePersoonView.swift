//
//  ViewController.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 22/04/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DetaillePersoonView: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    var persoon = Persoon()
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var naamLbl: UILabel!
    @IBOutlet weak var voornaamLbl: UILabel!
    
    @IBOutlet weak var telLbl: UILabel!
    @IBOutlet weak var adresLbl: UILabel!
    @IBOutlet weak var gemeenteLbl: UILabel!
    
    @IBOutlet var map: MKMapView!
    
    let location = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.naamLbl.text = persoon.naam.capitalized
    self.voornaamLbl.text = persoon.voornaam.capitalized
    self.telLbl.text = persoon.telefoonnummer
    self.adresLbl.text = persoon.straatnummer.capitalized
    self.gemeenteLbl.text = persoon.gemeentepostcode.capitalized
    self.imgView.image = UIImage(named: persoon.foto)
        
    let persoonLoc = MKPointAnnotation()
    persoonLoc.coordinate = CLLocationCoordinate2D(latitude: persoon.coordinaat1, longitude: persoon.coordinaat2)
    persoonLoc.title = persoon.straatnummer.capitalized
    persoonLoc.subtitle = persoon.gemeentepostcode.capitalized
        
    self.map.addAnnotation(persoonLoc)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ImageViewController{
            vc.temp = self.imgView.image
        }
    }
}

