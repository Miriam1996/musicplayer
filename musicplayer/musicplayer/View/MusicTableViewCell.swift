//
//  MusicTableViewCell.swift
//  musicplayer
//
//  Created by Test on 3/23/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit
import MediaPlayer

class MusicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var albumartwork:UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    func updateViews(track:MPMediaItem){
        if let image = track.artwork{
            self.albumartwork.image = image.image(at: CGSize(width: 20, height: 20))
        }
        if let artist = track.artist{
            self.artistLabel.text = artist
        }
        if let title = track.title{
            self.titleLabel.text = title
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
       
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
