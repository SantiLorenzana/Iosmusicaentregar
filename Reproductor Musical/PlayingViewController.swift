//
//  PlayingViewController.swift
//  Reproductor Musical
//
//  Created by alumnos on 23/11/17.
//  Copyright © 2017 santi. All rights reserved.
//

import UIKit

class PlayingViewController: UIViewController {

    @IBOutlet weak var Titleview: UILabel!
    
    @IBOutlet weak var Imageview: UIImageView!
    
    @IBOutlet weak var Artistview: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Titleview.text = songs[0].title
        Artistview.text = songs[0].artist
        Imageview.image = songs[0].image
    }
    

    

   

}
