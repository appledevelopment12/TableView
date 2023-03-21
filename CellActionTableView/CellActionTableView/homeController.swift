//
//  homeController.swift
//  CellActionTableView
//
//  Created by Rajeev on 03/03/23.
//

import UIKit

class homeController: UIViewController {
    
    
    @IBOutlet var actorName: UILabel!
    @IBOutlet var actorImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actorName.text = ActorName[myIndex]
        actorImage.image = UIImage(named: ActorImage[myIndex])
        

    }
    

   
}
