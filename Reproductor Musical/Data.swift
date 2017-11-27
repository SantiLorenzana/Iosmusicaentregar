//
//  Data.swift
//  Reproductor Musical
//
//  Created by alumnos on 23/11/17.
//  Copyright © 2017 santi. All rights reserved.
//

import Foundation
import UIKit

let songs: [Song] = [Song(title: "The Diary of Jane",
                          artist: "Breaking Benjamin",
                          album: "Phobia",
                          audio: URL(fileURLWithPath: Bundle.main.path(forResource: "The Diary of Jane", ofType: "mp3")!),
                          image: #imageLiteral(resourceName: "download")),
                     Song(title: "Make me wanna Die",
                          artist: "The Pretty Reckless",
                          album: "Light me up",
                          audio: URL(fileURLWithPath: Bundle.main.path(forResource: "Make Me Wanna Die", ofType: "mp3")!),
                          image: #imageLiteral(resourceName: "download-2")),
                     Song(title: "Nightmare",
                          artist: "Avenged Sevenfold",
                          album: "Nightmare",
                          audio: URL(fileURLWithPath: Bundle.main.path(forResource: "Nightmare", ofType: "mp3")!),
                          image: #imageLiteral(resourceName: "51d9tv-ukZL._SY355_")),
                    Song(title: "Make it Stop",
                         artist: "Rise Against",
                         album: "Endgame",
                         audio: URL(fileURLWithPath: Bundle.main.path(forResource: "Make It Stop", ofType: "mp3")!),
                         image: #imageLiteral(resourceName: "download-3"))]


