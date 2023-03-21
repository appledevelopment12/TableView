//
//  ViewController.swift
//  FavouriteSelectByHeart
//
//  Created by Rajeev on 10/03/23.
//

import UIKit

var  CricketName=["Rohit sharma","Virat kohli ","Ishan kishan ","Hardik pandaya ","Rohit sharma","Virat kohli ","Ishan kishan ","Hardik pandaya ","Rohit sharma","Virat kohli ","Ishan kishan ","Hardik pandaya "]


class ViewController: UIViewController
{
   
    @IBOutlet var MyTable: UITableView!
    var favouriteCrickter = [Int:Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTable.tableFooterView = UIView()
        
    }
    @IBAction func shortFavouriteButton(_ sender: UIBarButtonItem)
    {
        let favoriteHome = self.storyboard?.instantiateViewController(withIdentifier: "favouriteHome") as! favouriteViewController
        favoriteHome.favouriteList = favouriteCrickter
        self.navigationController?.pushViewController(favoriteHome, animated: true)
    }
    
    private func blankfavouriteCrickter()
    {
        for i in 0...favouriteCrickter.count
        {
            favouriteCrickter[i]=false
        }
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CricketName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        if favouriteCrickter[indexPath.row]==true
        {
            cell.myImage.image = UIImage(named: "heart1")
            cell.myLabel.text = CricketName[indexPath.row]
            
        }
        else
        {
            cell.myImage.image = UIImage(named: "heart")
            cell.myLabel.text =  CricketName[indexPath.row]
            
        }
        cell.selectionStyle = .none
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = MyTable.cellForRow(at: indexPath) as! TableViewCell
        
        cell.myImage.image = UIImage(named: "heart1")
        favouriteCrickter[indexPath.row]=true
        
       
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = MyTable.cellForRow(at: indexPath) as! TableViewCell
        cell.myImage.image = UIImage(named: "heart")
        favouriteCrickter[indexPath.row] = false
       
    }
    
    
}


