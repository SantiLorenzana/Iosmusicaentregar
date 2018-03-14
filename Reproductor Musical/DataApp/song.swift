//
//  song.swift
//  Reproductor Musical
//
//  Created by alumnos on 23/11/17.
//  Copyright © 2017 santi. All rights reserved.
//


import UIKit

class Song {
    
    var idSong: String = ""
    var Artist: String = ""
    var songName: String = ""
    var urlSong: String = ""
  
    
    init(Song: [String: Any]) {
        idSong = Song["id"] as! String
        Artist = Song["nameArtist"] as! String
        songName = Song["nameSong"] as! String
        urlSong = Song["urlSong"] as! String
    
    }
}
