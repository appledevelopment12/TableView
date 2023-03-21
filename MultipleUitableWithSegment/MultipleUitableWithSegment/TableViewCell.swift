//
//  TableViewCell.swift
//  MultipleUitableWithSegment
//
//  Created by Rajeev on 02/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet var img: UIImageView!
    @IBOutlet var lblTitle: UILabel!
   // @IBOutlet var lblCity: UILabel!
    @IBOutlet var lblCity: UILabel!
    var ahModel:AhmedabadModel!
    {
        didSet{
            lblTitle.text = ahModel.title
            lblCity.text = ahModel.city
            img.image = ahModel.img
        }
    }
    var mhModel:MumbaiModel!
    {
        didSet{
            lblTitle.text = mhModel.title
            lblCity.text = mhModel.city
            img.image = mhModel.img
        }
    }
    var bhModel:BangloreModel!
    {
        didSet{
            lblTitle.text = bhModel.title
            lblCity.text = bhModel.city
            img.image = bhModel.img
        }
    }
    var biModel:BiharModel!
    {
        didSet{
            lblTitle.text = biModel.title
            lblCity.text = biModel.city
            img.image = biModel.img
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
