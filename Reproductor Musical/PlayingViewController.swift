//
//  PlayingViewController.swift
//  Reproductor Musical
//
//  Created by alumnos on 23/11/17.
//  Copyright © 2017 santi. All rights reserved.
//

import UIKit
import AVFoundation

class PlayingViewController: UIViewController {
    
    

    @IBOutlet weak var Titleview: UILabel!
    
    @IBOutlet weak var Imageview: UIImageView!
    
    @IBOutlet weak var Artistview: UILabel!
    
    @IBOutlet weak var fondo: UIImageView!
    
    
     var currentsong: Int = 0
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         currentsong = 0
        newSong(songIndex: 0)
        Imageview.alpha = 0
        UIView.animate(withDuration: 1) { 
            self.Imageview.alpha = 1
    
        }
        
    }
    func appear()  {
        Imageview.alpha = 0
        Titleview.alpha = 0
        Artistview.alpha = 0
        UIView.animate(withDuration: 0.6) {
            self.Imageview.alpha = 1
            self.Titleview.alpha = 1
            self.Artistview.alpha = 1
            self.Titleview.center = CGPoint(x:100, y:100)
            self.Artistview.center = CGPoint(x:-100, y:-100)
        }
    
        

        
    }
    
    @IBAction func ButtonBefore(_ sender: Any) {
        if (currentsong > 0) {
        currentsong-=1
        newSong(songIndex: currentsong)
            UIView.transition(with: view, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            appear()
        }
        
    }

    @IBAction func ButtonForward(_ sender: Any) {
        if (currentsong < songs.count - 1) {
            currentsong += 1
            newSong(songIndex: currentsong)

            UIView.transition(with: view, duration: 1, options: .transitionFlipFromRight, animations: nil, completion: nil)
            appear()
        }
        
       
    }
    func newSong(songIndex: Int){
    
        Titleview.text = songs[songIndex].title
        Artistview.text = songs[songIndex].artist
        Imageview.image = songs[songIndex].image
        fondo.image = songs[songIndex].image
        loadaudio(url: songs[songIndex].audio)
        
    
    }
    @IBAction func rightswipe(_ sender: UISwipeGestureRecognizer) {
        if(sender.direction == .right){
            
            ButtonForward((Any).self)
            
        }
    }
    @IBAction func leftswipe(_ sender: UISwipeGestureRecognizer) {
        if(sender.direction == .left){
            
            ButtonBefore((Any).self)
            
        }
        
    }
    func loadaudio(url: URL) {

            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                present(mostrarError(mensaje: "Cancionnotfound404"), animated:true, completion: nil)
            }
        
            
        
    
    }
    
    
}
