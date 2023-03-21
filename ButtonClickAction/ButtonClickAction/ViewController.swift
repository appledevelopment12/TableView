//
//  ViewController.swift
//  ButtonClickAction
//
//  Created by Rajeev on 04/03/23.
//

import UIKit

class ViewController: UIViewController
{
    var actorArray = ["anushka","manisha","sushant","anchal","shreya","monu","sonu","tonu"]
    @IBOutlet var myTable: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}


extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return actorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.myActor.text = actorArray[indexPath.row]
        cell.myButton.tag = indexPath.row
        cell.selectionStyle = .none
        cell.myButton.addTarget(self, action: #selector(addToButton), for: .touchUpInside)
        return cell
    }
    @objc func addToButton(sender : UIButton)
    {
        let indexpath1 = IndexPath(row:sender.tag,section: 0)
        selectActorrrr = actorArray[indexpath1.row]
        let home = self.storyboard?.instantiateViewController(withIdentifier: "homeViewController") as! homeViewController
        self.navigationController?.pushViewController(home, animated:true)
    }
}

