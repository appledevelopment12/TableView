//
//  ViewController.swift
//  multipleSelectionInTableView
//
//  Created by Rajeev on 01/03/23.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet var myTableView: UITableView!
    
    let phoneList = ["iphone 6s","iphone 6","iphone 7","iphone 8","iphone 9","iphone 12","iphone 14 ","iphone 14 pro"]
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.tableFooterView = UIView()
        
    }
    @IBAction func doneButtonPressed(_ sender: Any)
    {
        items.removeAll()
        
        if let selectedRows = myTableView.indexPathsForSelectedRows
        {
            for iPath in selectedRows
            {
                
                items.append(phoneList[iPath.row])
            }
            print("---Your Have Selected Items Phones")
            for item in items
            {
                print(item)
            }
        }
        
    }
}
                                                                                               
    
    


extension ViewController:  UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = phoneList[indexPath.row]
       // cell?.detailTextLabel?.text  = phoneList[indexPath.row]
        cell?.selectionStyle = .none
        
        return   cell!
      
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
/*    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        myTableView.cellForRow(at: indexPath)?.accessoryType = .none
    }*/
}

