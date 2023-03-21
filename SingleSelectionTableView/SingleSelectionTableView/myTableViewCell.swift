//
//  myTableViewCell.swift
//  SingleSelectionTableView
//
//  Created by Rajeev on 01/03/23.
//

import UIKit

class myTableViewCell: UITableViewCell {
    
    
    @IBOutlet var myImage: UIImageView!
    
    @IBOutlet var myLabel: UILabel!
    
    var isCheck = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
