//
//  MusicTableViewVC.swift
//  musicplayer
//
//  Created by Test on 3/23/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit
import MediaPlayer
var row: Int = -1

class MusicTableViewVC: UITableViewController {
    var tracks: [MPMediaItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tracks = MPMediaQuery.songs().items!
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tracks.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? MusicTableViewCell{
            
            cell.updateViews(track: tracks[indexPath.row])
            return cell
        }
       
        
        return MusicTableViewCell()
        
    }
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        row = indexPath.row
    let player = try! AVAudioPlayer(contentsOf: tracks[row].assetURL!)
        player.play()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("happen")
        if segue.identifier  == "playSongs"{
            
            if let cell =  sender as? MusicTableViewCell{
                if  let indexpath = tableView.indexPath(for: cell){
                    if let controller = segue.destination as? MusicPlayerVC{
                        controller.track = tracks[indexpath.row]
                    }
                }
            }
        }
    }
    
     

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
 

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
*/

}
