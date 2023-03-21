//
//  ViewController.swift
//  CricterNameWithRating
//
//  Created by Rajeev on 25/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var myTable: UITableView!
    
    
    
    
    var listPlayer = [PlayerData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let player1 = PlayerData(pName: "Dhoni", cntName: "India", rplayer: 520, photoPlayer: "dhoni")
        listPlayer.append(player1)
        
        let player2 = PlayerData(pName: "ShikharDhawan", cntName: "India", rplayer: 400, photoPlayer: "dhawan")
        listPlayer.append(player2)
        
        let player3 = PlayerData(pName: "Aswin", cntName: "India", rplayer: 410, photoPlayer: "aswin")
        listPlayer.append(player3)
        
        let player4 = PlayerData(pName: "sachine", cntName: "India", rplayer: 200, photoPlayer: "sachine")
        listPlayer.append(player4)
        
        let player5 = PlayerData(pName: "Virat Kohli", cntName: "India", rplayer: 300, photoPlayer: "kohli")
        listPlayer.append(player5)
        
         let player6 = PlayerData(pName: "Risabh Pant", cntName: "India", rplayer: 500, photoPlayer: "risabh")
        listPlayer.append(player6)
        
        let player7 = PlayerData(pName: "ishantSharma", cntName: "India", rplayer: 324, photoPlayer: "ishantSharma")
        listPlayer.append(player7)
        
        let player8 = PlayerData(pName: "Bretli", cntName: "Austrialia", rplayer: 400, photoPlayer: "bretli")
        listPlayer.append(player8)
        myTable.tableFooterView = UIView(frame: .zero)
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPlayer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell =  myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.rankLevel.text = " \(indexPath.row+1)"
        cell.rankLevel.backgroundColor = UIColor.yellow
        cell.playerNamelbl.text = listPlayer[indexPath.row].playerName
        cell.countryLabel.text = listPlayer[indexPath.row].country
        cell.playerImage.image = UIImage(named: listPlayer[indexPath.row].plyerImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete{
                listPlayer.remove(at: indexPath.row)
           //    array2.remove(at: indexPath.row)
               // arring.remove(at: indexPath.row)
                
                
                tableView.deleteRows(at: [indexPath], with: .fade)
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
