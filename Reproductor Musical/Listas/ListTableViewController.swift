//
//  RegisterViewController.swift
//  Reproductor Musical
//
//  Created by alumnos on 14/3/18.
//  Copyright © 2018 santi. All rights reserved.
//

import UIKit
import Toast_Swift


class ListTableViewController: UITableViewController{
    
    let dataManager = DataManager()
    var songs = NSArray()
    var songsParsed = [Song]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        obtainSongs(parameters: ["data": "nil"])
    }
    
    func obtainSongs(parameters: [String: Any]){
        //Se hace la llamada a la API y se filtran los códigos de respuesta
        dataManager.getSongs(params: parameters) { (json) in
            if json.code == 200 {
                self.songs = json.data["songs"] as! NSArray
                
                for songR in json.data["songs"] as! [[String : Any]]{
                    self.songsParsed.append(Song(Song:songR))
                }
                
                self.tableView.reloadData()
                self.view.makeToast(json.message , duration: 3.0, position: .top)
            } else if json.code == 401 || json.code == 419{
                self.view.makeToast(json.message , duration: 3.0, position: .top)
            } else if json.code == 400 || json.code == 500 {
                print(String(describing:json))
            }
        }
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.songsParsed.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : DataInTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Songcell", for: indexPath) as! DataInTableViewCell
        
        cell.SongName.text = self.songsParsed[indexPath.item].songName
        cell.Artist.text = self.songsParsed[indexPath.item].Artist
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(songsParsed[indexPath.item].urlSong)
    }


}
