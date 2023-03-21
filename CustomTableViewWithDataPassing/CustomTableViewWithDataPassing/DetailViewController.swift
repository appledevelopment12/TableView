//
//  DetailViewController.swift
//  CustomTableViewWithDataPassing
//
//  Created by Rajeev on 24/02/23.
//


    

    
    
    import UIKit

    class DetailViewController: UIViewController {
        
        @IBOutlet var dimg: UIImageView!
        
        @IBOutlet var dlb1: UILabel!
        
        @IBOutlet var dlb2: UILabel!
        
        var strlbl1:String!
        var  strlb2:String!
        var strimg:UIImage!
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            dlb1.text = strlbl1
            dlb2.text = strlb2
            dimg.image = UIImage(named: "strimg")
            
            
        }
    }

