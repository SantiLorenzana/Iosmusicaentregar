//
//  DataManager.swift
//  SwitcHome
//
//  Created by alumnos on 3/3/18.
//  Copyright © 2018 DomoticSolutions. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    
    let urlBase: String = "localhost/santiApi/public/index.php/"
    
   
    
    //Se hace una llamada a la API con el endpoint del Login y se devuelve la respuesta parseada desde json,
    //necesita recibir los parametros en formato de [String: Any]
    func getLogin(params: [String: Any], completionHandler: @escaping (_ json: JSONhttp) -> Void){
        let requestController = RequestController()
        
        let url: URL = URL(string:"\(urlBase)users/login.json")!
        
        
        requestController.makeGetRequest(url: url, params: params, headers: [:]) { (json) in
            completionHandler(json)
        }
    }
    
    //Se hace una llamada a la API con el endpoint de la creación de usuario y se devuelve la respuesta parseada desde json,
    //necesita recibir los parametros en formato de [String: Any]
    func postCreateUser(params: [String: Any], completionHandler: @escaping (_ json: JSONhttp) -> Void){
        let requestController = RequestController()
        
        let url: URL = URL(string:"\(urlBase)/users/create.json")!
        let headers: [String: String] = ["Content-Type": "application/x-www-form-urlencoded"]
        
        requestController.makePostRequest(url: url, params: params, headers: headers, completionHandler: {(json) in
            completionHandler(json)
        })
    }
    
    //Se hace una llamada a la API con el endpoint de recuperar la contraseña y se devuelve la respuesta parseada desde json,
    //necesita secibir los parametros en formato de [String: Any]
    func getRecoverPass(params: [String: Any], completionHandler: @escaping (_ json: JSONhttp) -> Void){
        let requestController = RequestController()
        
        let url: URL = URL(string:"\(urlBase)users/recover_pass.json")!
        
        requestController.makeGetRequest(url: url, params: params, headers: [:]) { (json) in
            completionHandler(json)
        }
    }
    
    //Se hace una llamada a la API con el endpoint de actualizar contraseña y se devuelve la respuesta parseada desde json,
    //necesita secibir los parametros en formato de [String: Any]
    func postUpdatePass(params: [String: Any], completionHandler: @escaping (_ json: JSONhttp) -> Void){
        let requestController = RequestController()
        
        let url: URL = URL(string:"\(urlBase)users/update_pass.json")!
        
        let headers: [String: String] = ["Content-Type": "application/x-www-form-urlencoded", "Authorization": UserDefaults.standard.value(forKey: "token") as! String]
        
        requestController.makePostRequest(url: url, params: params, headers: headers, completionHandler: {(json) in
            completionHandler(json)
        })
    }
    
    //Se hace una llamada a la API con el endpoint de autorización y se devuelve la respuesta parseada desde json,
    //necesita secibir los parametros en formato de [String: Any]
    func getAuth(completionHandler: @escaping (_ json: JSONhttp) -> Void){
        let requestController = RequestController()
        
        let url: URL = URL(string:"\(urlBase)base/default_auth.json")!
        let headers: [String: String] = ["Authorization": UserDefaults.standard.value(forKey: "token") as! String]
        
        requestController.makeGetRequest(url: url, params: [:], headers: headers, completionHandler: {(json) in
            completionHandler(json)
        })
    }
    
    //Se hace una llamada a la API con el endpoint de actualizar usuario y se devuelve la respuesta parseada desde json,
    //necesita recibir los parametros en formato de [String: Any]
    func postUpdateUser(params: [String: Any], image: UIImage?, completionHandler: @escaping (_ json: JSONhttp) -> Void) {
        let requestController = RequestController()
        
        let url: URL = URL(string:"\(urlBase)users/updateData.json")!
        let headers: [String: String] = ["Content-Type": "multipart/form-data", "Authorization": UserDefaults.standard.value(forKey: "token") as! String]
        
        requestController.makePostRequestMultipart(url: url, params: params, headers: headers, image: image, completionHandler: {(json) in
            
            completionHandler(json)
        })
    }
    func getSongs(params: [String: Any], completionHandler: @escaping (_ json: JSONhttp) -> Void){
        let requestController = RequestController()
        
        let url: URL = URL(string:"localhost/santiApi/public/index.php/canciones/songs.json")!
        
        requestController.makeGetRequest(url: url, params: [:], headers: [:]) { (json) in
            completionHandler(json)
        }
    }
    
}
