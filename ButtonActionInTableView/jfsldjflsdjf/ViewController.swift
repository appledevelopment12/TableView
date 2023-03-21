//
//  ViewController.swift
//  jfsldjflsdjf
//
//  Created by Rajeev on 03/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var addbtn: UIButton!
    @IBOutlet var myTable: UITableView!
    var arr = ["rohit","rohan","sohan","sonu","monu","kaira","hii","onion","potato","south","movie"]
    
    var arrImage:[String] = ["kaira","shilpa","anya","rasmik","dipika","aliya","food","tick","untick","1","2","3","4","5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func abc(_ sender: UIButton) {
        
        let secondviewController:UIViewController=(self.storyboard?.instantiateViewController(withIdentifier: "myViewController") as? myViewController)!
        
        self.navigationController?.pushViewController(secondviewController, animated: true)
        
        
    }

}
extension  ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        cell.selectionStyle = .none
        cell.imageView?.image = UIImage(named: arrImage[indexPath.row])
       // cell.UI
        return cell
    }
    func tableView(_ tableView: UITableView,commit editingStyle:UITableViewCell.EditingStyle,forRowAt indexPath:IndexPath)
      {
        if editingStyle == .delete
        {
            arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
      }
      
    
    
}

