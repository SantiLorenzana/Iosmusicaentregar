//
//  song.swift
//  Reproductor Musical
//
//  Created by alumnos on 23/11/17.
//  Copyright © 2017 santi. All rights reserved.
//

import Foundation
import UIKit

class Song {
    
   let title: String
   let artist: String
   let album: String
   let audio: URL
   let image: UIImage
    
    init(title: String, artist:String, album: String, audio: URL, image: UIImage){
        self.title = title
        self.artist = artist
        self.album = album
        self.audio = audio
        self.image = image
    
    
    }
}
