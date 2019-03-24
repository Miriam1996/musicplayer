//
//  MusicPlayerVC.swift
//  musicplayer
//
//  Created by Test on 3/23/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit
import MediaPlayer
class MusicPlayerVC: UIViewController {
   var track: MPMediaItem!

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var AlbumArtwork: UIImageView!
    @IBOutlet weak var ArtistLabel: UILabel!
    @IBOutlet weak var AlbumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleLabel.text = track.title!
        AlbumArtwork.image = track.artwork!.image(at: CGSize(width: 20, height: 20))
        ArtistLabel.text = track.artist!
        AlbumLabel.text = track.albumTitle!
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
