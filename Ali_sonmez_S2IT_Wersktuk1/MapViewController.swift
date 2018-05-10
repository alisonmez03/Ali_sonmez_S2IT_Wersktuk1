//
//  MapViewController.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 10/05/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//
import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var personen = [Persoon]()
    var locationManager = CLLocationManager()
    
    @IBOutlet var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = Persoon(naam: "margot", voornaam: "robbie", foto: "MargotRobbie", straatnummer: "Meirstraat 24", gemeentepostcode:"5000 Schipper", telefoonnummer: "0488.870.452", coordinaat1:51.219448, coordinaat2:4.402464)
        personen.append(p1)
        
        let p2 = Persoon(naam: "adriana", voornaam: "lima", foto: "AdrianaLima", straatnummer: "Havenmarkt 122", gemeentepostcode:"1080 Sint-Jans-Molenbeek", telefoonnummer: "0488.870.452", coordinaat1:50.93069, coordinaat2:5.33248)
        personen.append(p2)
        
        let p3 = Persoon(naam: "amanda", voornaam: "cerny", foto: "AmandaCerny", straatnummer: "Scheldestraat 118", gemeentepostcode:"8000 Diamant", telefoonnummer: "0488.870.452", coordinaat1:50.866188, coordinaat2:4.366802)
        personen.append(p3)
        
        let p4 = Persoon(naam: "alex", voornaam: "morgan", foto: "Alex-Morgan", straatnummer: "Sint-Niklaas 2", gemeentepostcode:"9100 Gent", telefoonnummer: "0488.870.452", coordinaat1:51.054342, coordinaat2:3.717424)
        personen.append(p4)
        
        let p5 = Persoon(naam: "anne", voornaam: "marie", foto: "Anne-marie", straatnummer: "Psv-laan 138", gemeentepostcode:"4080 Eindhoven", telefoonnummer: "0488.870.452", coordinaat1:51.441642, coordinaat2:5.469722)
        personen.append(p5)
        
        let p6 = Persoon(naam: "elizo", voornaam: "tina", foto: "elizo", straatnummer: "Bergstraat 18", gemeentepostcode:"9540 Utrecht", telefoonnummer: "0488.870.452", coordinaat1:52.090737, coordinaat2:5.121142)
        personen.append(p6)
        
        let p7 = Persoon(naam: "irina", voornaam: "taylor", foto: "irina", straatnummer: "Warandestraat 118", gemeentepostcode:"1080 Rotterdam", telefoonnummer: "0488.870.452", coordinaat1:51.92442, coordinaat2:4.477733)
        personen.append(p7)

        writeAnnotation()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func writeAnnotation(){
        for persoon in personen {
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: persoon.coordinaat1, longitude: persoon.coordinaat2)
            annotation.title = persoon.straatnummer.capitalized
            
            self.MapView.addAnnotation(annotation)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }
    
}
