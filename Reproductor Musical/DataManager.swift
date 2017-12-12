//
//  DataManager.swift
//  Reproductor Musical
//
//  Created by alumnos on 12/12/17.
//  Copyright © 2017 santi. All rights reserved.
//

import Foundation
import UIKit


let fileManager = FileManager.default
var documentsPath =
    (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as
        NSString)

func saveimage(image: UIImage, name: String)  {
   
    
    
    let imagePath = documentsPath.appendingPathComponent(name) as (NSString)

    
    fileManager.createFile(atPath: imagePath as
        String, contents:
        UIImageJPEGRepresentation(image, 1.0))
   
    
}

func chargeimage(name: String) -> UIImage? {
    
    
   let imagePath = documentsPath.appendingPathComponent(name) as (NSString)
    
    if fileManager.fileExists(atPath: imagePath as String) {
        return UIImage(contentsOfFile: imagePath as String)!
    } else{
    return nil
    }
    
    
}
