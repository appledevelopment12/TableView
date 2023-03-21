//
//  ViewController.swift
//  SingleSelectionTableView
//
//  Created by Rajeev on 01/03/23.
//

import UIKit

class ViewController: UIViewController
{
    var  phoneCompanyList=["Apple","Sumsung","Nokia","Motorola","Mi Mobile","Oppo","Lava"]

    @IBOutlet var MyTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTable.tableFooterView = UIView()
        
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneCompanyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        
        cell.myLabel.text = phoneCompanyList[indexPath.row]
        cell.myImage.image = UIImage(named: "untick")
        cell.selectionStyle = .none
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = MyTable.cellForRow(at: indexPath) as! myTableViewCell
        if cell.isCheck == false
        {
            cell.isCheck = true
            cell.myImage.image = UIImage(named: "tick")
            print("You Have Selected Phone Company \(phoneCompanyList[indexPath.row])")
        }
        else
        {
            cell.isCheck = false
            cell.myImage.image = UIImage(named: "untick")
            print("Your Have Deselected Phone Company \(phoneCompanyList[indexPath.row])")
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = MyTable.cellForRow(at: indexPath) as! myTableViewCell
        cell.myImage.image = UIImage(named: "untick")
        print("Your Have Deselected Phone Company \(phoneCompanyList[indexPath.row])")
    }
    
    
}

