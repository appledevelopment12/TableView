//
//  ViewController.swift
//  MultipleUitableWithSegment
//
//  Created by Rajeev on 02/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var segOut: UISegmentedControl!
    var ahData:[AhmedabadModel]=[]
    var baData:[BangloreModel]=[]
    var muData:[MumbaiModel]=[]
    var biData:[BiharModel]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ahData = [
            AhmedabadModel(city: "City:- Ahmedabad", img: UIImage(named: "A Actor"), title: "A Actor"),
            AhmedabadModel(city: "City:- Ahmedabad", img: UIImage(named: "A Player"), title: "A Player"),
            AhmedabadModel(city: "City:- Ahmedabad", img: UIImage(named: "A National Fruit"), title: "A National Fruit"),
            AhmedabadModel(city: "City:- Ahmedabad", img: UIImage(named: "A National animal"), title: "A National animal"),
            AhmedabadModel(city: "City:- Ahmedabad", img: UIImage(named: "A Famous place"), title: "A Famous place"),
            AhmedabadModel(city: "City:- Ahmedabad", img: UIImage(named: "A National Bird"), title: "A National Bird")
                 ]
        baData = [
            BangloreModel(city: "City:- Banglore", img: UIImage(named: "B Actor"), title: "B Actor"),
            BangloreModel(city: "City:- Banglore", img: UIImage(named: "B Player"), title: "B Player"),
            BangloreModel(city: "City:- Banglore", img: UIImage(named: "B National Fruit"), title: "B National Fruit"),
            BangloreModel(city: "City:- Banglore", img: UIImage(named: "B National animal"), title: "B National animal"),
            BangloreModel(city: "City:- Banglore", img: UIImage(named: "B Famous place"), title: "B Famous place"),
            BangloreModel(city: "City:- Banglore", img: UIImage(named: "B National Bird"), title: "B National Bird")
                ]
        muData = [
            MumbaiModel(city: "City:- Mumbai", img: UIImage(named: "M Actor"), title: "M Actor"),
            MumbaiModel(city: "City:- Mumbai", img: UIImage(named: "M Player"), title: "M Player"),
            MumbaiModel(city: "City:- Mumbai", img: UIImage(named: "M National Fruit"), title: "M National Fruit"),
            MumbaiModel(city: "City:- Mumbai", img: UIImage(named: "M National animal"), title: "M National animal"),
            MumbaiModel(city: "City:- Mumbai", img: UIImage(named: "M Famous place"), title: "M Famous place"),
            MumbaiModel(city: "City:- Mumbai", img: UIImage(named: "M National Bird"), title: "M National Bird")
            
        ]
      biData = [
           BiharModel(city: "City:- Bihar", img: UIImage(named: "BI Actor"), title: "BI Actor"),
           BiharModel(city: "City:- Bihar", img: UIImage(named: "BI Player"), title: "BI Player"),
           BiharModel(city: "City:- Bihar", img: UIImage(named: "BI National Fruit"), title: "BI National Fruit"),
           BiharModel(city: "City:- Bihar", img: UIImage(named: "BI National animal"), title: "BI National animal"),
           BiharModel(city: "City:- Bihar", img: UIImage(named: "BI Famous place"), title: "BI Famous place"),
           BiharModel(city: "City:- Bihar", img: UIImage(named: "BI National Bird"), title: "BI National Bird")
               ]
        
    }

    @IBAction func btnSegClick(_ sender: UISegmentedControl)
    {
        self.tableView.reloadData()
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
        switch segOut.selectedSegmentIndex
        {
        case 0:
            value = ahData.count
            break
        case 1:
            value = muData.count
            break
        case 2:
            value = baData.count
            break
        case 3:
            value = biData.count
            break
        default:
            break
        }
        return value
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        switch segOut.selectedSegmentIndex{
        case 0:
            cell.ahModel = ahData[indexPath.row]
            break
        case 1:
            cell.mhModel = muData[indexPath.row]
            break;
        case 2:
            cell.bhModel = baData[indexPath.row]
            break;
        case 3:
            cell.biModel = biData[indexPath.row]
            break;
        default:
            break;
        }
        return cell
    }
    
    
    
}

