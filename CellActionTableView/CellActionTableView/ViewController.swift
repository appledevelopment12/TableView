//
//  ViewController.swift
//  CellActionTableView
//
//  Created by Rajeev on 03/03/23.
//

var  ActorName = ["shilpa","anya","asvariya","rasmik","rekha","shardha","dipika","aliya"]
var  ActorImage = ["shilpa","anya","asvariya","rasmik","rekha","shardha","dipika","aliya"]

var  myIndex = 0

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ActorName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = ActorName[indexPath.row]
        cell.imageView?.image = UIImage(named: ActorImage[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        myTable.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "home", sender: self)
    }
    
    
}
