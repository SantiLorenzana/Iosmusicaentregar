//
//  ErrorDisplay.swift
//  Reproductor Musical
//
//  Created by alumnos on 27/11/17.
//  Copyright © 2017 santi. All rights reserved.
//

import Foundation
import UIKit

func mostrarError(mensaje: String) -> UIAlertController {
    
    let alert = UIAlertController(title: NSLocalizedString("error", comment: "" ),  message: NSLocalizedString(mensaje, comment: "" ), preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "Aceptar", style:
        .default, handler: nil))
    
    
    return alert
    

    
}
