//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Karina Mora on 2/4/24.
//
import Nuke
import UIKit

class TrackCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        /// Configures the cell's UI for the given track.
        
        }
    

    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName
    
    // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
    }
}
