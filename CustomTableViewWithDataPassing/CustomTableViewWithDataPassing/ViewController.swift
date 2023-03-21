//
//  ViewController.swift
//  CustomTableViewWithDataPassing
//
//  Created by Rajeev on 24/02/23.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet var tblview: UITableView!
    
    
    

    var array1 = ["fast food","clean ","Fruit","Sports","FaceWash","Vegetable","Toys","Home","Snacks"]
    var array2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh","iiii"]
    // var arrimg = (UIImage(imageLiteralResourceName: "food","foood","home")
    var arring:[String]=["food","1","2","3","4","5","toys","home","snacks"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2 //that repeat the image and  name that depend on the return if return 3 that print the 3 times

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell  = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lb1.text = array1[indexPath.row]
        cell.lb2.text = array2[indexPath.row]
        cell.img.image=UIImage(named: arring[indexPath.row])
        return cell
        /*
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
         cell?.textLabel?.text = array1[indexPath.row]
         cell?.detailTextLabel?.text  = array2[indexPath.row]
         return   cell!*/
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // self.view.backgroundColor = UIColor.blue
        let detail: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detail.strlbl1 = array1[indexPath.row]
        detail.strlb2 = array2[indexPath.row]
        detail.strimg  = UIImage(named: "arring")
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arring.remove(at: indexPath.row)
            
            tblview.deleteRows(at: [indexPath], with: .fade)
        }
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
    
    
}

