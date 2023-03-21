//
//  MyTableViewController.swift
//  ImageTableController
//
//  Created by Rajeev on 17/02/23.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var actress:[String]=[
        
        "Rasmik mandana",
        "Shilpa Shetty",
        "Jahvi Kapoor",
        "Shardha Kapoor",
        "Asvariya RAI",
        "Aliya  Bhatt",
        "Dipika Padukon",
        "Rekha",
        "Kaira"
        
    ]
    var actressImage:[String]=[
        "rasmik",
        "shilpa",
        "jahvi",
        "shardha",
        "asvariya",
        "aliya",
        "dipika",
        "rekha",
        "kaira"
        
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
        
    }

   
    

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        return actress.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell?=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell?.textLabel?.text=actress[indexPath.row]
        cell?.imageView?.image=UIImage(named: actressImage[indexPath.row])
        
        return cell!
    }

   
    

}
