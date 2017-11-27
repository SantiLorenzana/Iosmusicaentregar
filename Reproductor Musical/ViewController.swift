//
//  ViewController.swift
//  Reproductor Musical
//
//  Created by alumnos on 21/11/17.
//  Copyright © 2017 santi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func alertbutton(_ sender: UIButton) {
        present(mostrarError(mensaje: "mesajeloginincorrecto"), animated:true, completion: nil)
    }
        
    
    


}

