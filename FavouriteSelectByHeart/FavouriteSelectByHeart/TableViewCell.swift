//
//  TableViewCell.swift
//  FavouriteSelectByHeart
//
//  Created by Rajeev on 10/03/23.
//

import UIKit

class TableViewCell: UITableViewCell
{
    
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        
        super.setSelected(selected, animated: animated)

       
    }

}
