//
//  ViewController.swift
//  customCollectonViewWithDataPassing
//
//  Created by Rajeev on 04/03/23.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource
{
    
    
    var arrlbl = ["aliya","asvariya","rasmik","rasmikaMandana","rekha","shilpa","anya","dipika","shardha","aliya","asvariya","rasmik","rasmikaMandana","rekha","shilpa","anya","dipika","shardha"]
    var arrimg = ["aliya","asvariya","rasmik","rasmikaMandana","rekha","shilpa","anya","dipika","shardha","aliya","asvariya","rasmik","rasmikaMandana","rekha","shilpa","anya","dipika","shardha"]
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad()
    {
        
        
        super.viewDidLoad()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = UIImage(named: arrimg[indexPath.row])
        cell.lbl.text = arrlbl[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arrlbl.count
    }
    


}

