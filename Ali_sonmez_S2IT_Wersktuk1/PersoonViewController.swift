//
//  PersoonViewController.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 22/04/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//

import UIKit

class PersoonViewController: UITableViewController {
    
    var personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = Persoon(naam: "margot", voornaam: "robbie", foto: "MargotRobbie", straatnummer: "Scheldestraat 118", gemeentepostcode:"1080 Sint-Jans-Molenbeek", telefoonnummer: "0488.870.452")
        personen.append(p1)
        
        let p2 = Persoon(naam: "adriana", voornaam: "lima", foto: "AdrianaLima", straatnummer: "Scheldestraat 118", gemeentepostcode:"1080 Sint-Jans-Molenbeek", telefoonnummer: "0488.870.452")
        personen.append(p2)
        
        let p3 = Persoon(naam: "amanda", voornaam: "cerny", foto: "AmandaCerny", straatnummer: "Scheldestraat 118", gemeentepostcode:"1080 Sint-Jans-Molenbeek", telefoonnummer: "0488.870.452")
        personen.append(p3)
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
            let vc = segue.destination as! ViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            
            vc.persoon = personen[(indexPath?.row)!]
        }
    }
}
