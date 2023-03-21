//
//  favouriteViewController.swift
//  FavouriteSelectByHeart
//
//  Created by Rajeev on 10/03/23.
//

import UIKit

class favouriteViewController: UIViewController {
    @IBOutlet var myTable2: UITableView!
    
    var favouriteList = [Int:Bool]()
    var tempList = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i  in 0...favouriteList.count
        {
            if favouriteList[i]==true
            {
                tempList.append(i)
                
            }
        }

       
    }
    


}
extension favouriteViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable2.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = CricketName[tempList[indexPath.row]]
        return cell
    }
}
