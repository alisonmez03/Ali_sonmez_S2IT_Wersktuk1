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
        
        let p1 = Persoon(naam: "Margot", voornaam: "Robbie", foto: "MargotRobbie")
        personen.append(p1)
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

        cell.textLabel?.text = personen[indexPath.row].naam
        cell.detailTextLabel?.text = personen[indexPath.row].voornaam
        cell.imageView?.image = UIImage(named: personen[indexPath.row].foto)

        return cell
    }
}
