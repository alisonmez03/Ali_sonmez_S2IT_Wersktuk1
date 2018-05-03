//
//  ImageViewController.swift
//  Ali_sonmez_S2IT_Wersktuk1
//
//  Created by Ali Sönmez on 03/05/2018.
//  Copyright © 2018 Ali Sönmez. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var temp:UIImage?
    
    @IBOutlet var myImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = temp
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
