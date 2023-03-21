//
//  myTableViewCell.swift
//  ButtonClickAction
//
//  Created by Rajeev on 04/03/23.
//

import UIKit

class myTableViewCell: UITableViewCell
{

    @IBOutlet var myActor: UILabel!
    @IBOutlet var myButton: UIButton!
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
}
