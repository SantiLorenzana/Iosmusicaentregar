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
        let alert = UIAlertController(title: "Error", message: "Error de login mongolin", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar", style:
            .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style:
            .cancel, handler: { (accion) in
                print("El usuario ha pulsado cancelar")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    func mostrarError(mensaje: String) {
        
        let alert = UIAlertController(title: "Error", message: "Error de login mongolin", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar", style:
            .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style:
            .cancel, handler: { (accion) in
                print("El usuario ha pulsado cancelar")
        }))
        
        present(alert, animated: true, completion: nil)
        
        

        
    }
    


}

