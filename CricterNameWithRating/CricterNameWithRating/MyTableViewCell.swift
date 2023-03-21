//
//  MyTableViewCell.swift
//  CricterNameWithRating
//
//  Created by Rajeev on 25/02/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet var playerNamelbl: UILabel!
    
    @IBOutlet var rankLevel: UILabel!
    
    @IBOutlet var RatingLevel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var playerImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
