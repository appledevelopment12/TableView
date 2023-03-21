//
//  TableViewCell.swift
//  CustomTableViewWithDataPassing
//
//  Created by Rajeev on 24/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var lb1: UILabel!
    
    
    @IBOutlet var lb2: UILabel!
    
    @IBOutlet var img: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
