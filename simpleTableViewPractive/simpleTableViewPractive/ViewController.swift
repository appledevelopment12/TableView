//
//  ViewController.swift
//  simpleTableViewPractive
//
//  Created by Rajeev on 24/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var myTable: UITableView!
   var arr=["rohit","sohan","sonu","monu","ritesh ","chintu","shreya","anchal","SS","AAAA","AAJJDFJLD","JFDJ","JKJF","DJFL","DJFLJ","DJLJ","DJFLJL","DLSJL"]
    
 //   @IBOutlet var lb1: UILabel!
  //  var name=["Rohit sharma","Sohan sharma","Sonu sood","Monu yadav","Ritesh pandey","Chintu ji","Shreya singh","Anchal singh"]
    
  //  var arr = ["1","2","3","4","5"]
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transform
        
        UIView.animate(withDuration: 1.0)
        {
            cell.alpha = 1.0
            cell.layer.sublayerTransform = CATransform3DIdentity
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arr.remove(at: indexPath.row)
            //    array2.remove(at: indexPath.row)
            // arring.remove(at: indexPath.row)
            
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

