//
//  LoginViewController.swift
//  Reproductor Musical
//
//  Created by alumnos on 25/1/18.
//  Copyright © 2018 santi. All rights reserved.
//

import UIKit
import Toast_Swift

class LoginViewController: UIViewController {

    @IBOutlet weak var BtnLogin: UIButton!
    @IBOutlet weak var NameTexfield: UITextField!
    @IBOutlet weak var PassTextfield: UITextField!
    
   let dataManager = DataManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func BtnLogin(_ sender: UIButton) {
        if (NameTexfield.text?.isEmpty)! || (PassTextfield.text?.isEmpty)!{
            
        
            self.view.makeToast("Es necesario que todos los campos esten rellenos", duration: 3.0, position: .top)
            
        }else if(PassTextfield.text?.count)! < 6{
            
            
            self.view.makeToast("La contraseña debe tener al menos 6 caracteres", duration: 3.0, position: .top)
        }else{
           // showActivityIndicator()
            login(parameters: ["name": NameTexfield.text!, "pass": PassTextfield.text!])
        }
        
    }
    func login(parameters: [String: Any]){
        //Se hace la llamada a la API y se filtran los códigos de respuesta
        dataManager.getLogin(params: parameters) { (json) in
            if json.code == 200 {
                UserDefaults.standard.set(json.data["token"], forKey: "token")
                UserDefaults.standard.set(json.data["url_photo"], forKey: "profileImage")
                UserDefaults.standard.set(json.data["name"], forKey: "username")
                
                self.performSegue(withIdentifier: "goToMain", sender: nil)
                
            } else if json.code == 401 || json.code == 419{
                self.view.makeToast(json.message , duration: 3.0, position: .top)
                
            } else if json.code == 400 || json.code == 500 {
                print(String(describing:json))
            }
           // self.hideActivityIndicator()
        }
    }

    
    

    

}
