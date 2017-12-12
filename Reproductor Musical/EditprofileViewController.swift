//
//  EditprofileViewController.swift
//  Reproductor Musical
//
//  Created by alumnos on 12/12/17.
//  Copyright © 2017 santi. All rights reserved.
//

import UIKit

class EditprofileViewController: UIViewController {
    
    

    @IBOutlet weak var profilepic: UIImageView!
    
    @IBAction func guardar(_ sender: Any) {
        saveimage(image: profilepic.image!, name: "profilePicture.jpg")
        
    }
    @IBAction func cargar(_ sender: Any) {
        
        let image = chargeimage(name: "profilePicture.jpg")
        
        if image == nil {
        
            profilepic.image = #imageLiteral(resourceName: "avance-rapido")
            
        }else{
            profilepic.image = image
        
        }
        
        
            }
    
   
    
        

}
