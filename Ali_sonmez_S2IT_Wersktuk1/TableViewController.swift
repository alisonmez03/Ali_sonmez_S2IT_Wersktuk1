//
//  PersoonViewController.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 22/04/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = Persoon(naam: "margot", voornaam: "robbie", foto: "MargotRobbie", straatnummer: "Meirstraat 24", gemeentepostcode:"5000 Schipper", telefoonnummer: "0488.870.452", coordinaat1:51.219448, coordinaat2:4.402464)
        personen.append(p1)
        
        let p2 = Persoon(naam: "adriana", voornaam: "lima", foto: "AdrianaLima", straatnummer: "Havenmarkt", gemeentepostcode:"1080 Sint-Jans-Molenbeek", telefoonnummer: "0488.870.452", coordinaat1:50.93069, coordinaat2:5.33248)
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = personen[indexPath.row].naam.capitalized
        cell.detailTextLabel?.text = personen[indexPath.row].voornaam.capitalized
        cell.imageView?.image = UIImage(named: personen[indexPath.row].foto)

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetailleView"{
            let vc = segue.destination as! DetaillePersoonView
            let indexPath = self.tableView.indexPathForSelectedRow
            
            vc.persoon = personen[(indexPath?.row)!]
        }
    }
}
