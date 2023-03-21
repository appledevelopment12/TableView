//
//  ViewController.swift
//  TableViewBrain4Code
//
//  Created by Rajeev on 25/02/23.



import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    
    var cricketerName = ["Virat Kohli","Virendra Sahwag","Rohit Sharma","Yuvraj Singh","Ishan kishan","Hardik Pandaya","Risabh Pant","Kl Rahul","Shreyas ayer","Mukesh kumar","Dhoni","Rahul Dravid","Kartik Sharma","Sanju Samson","Harbhajan Singh","Shikhar Dhawan","Suryakumar Yadav","Jadeja","Suresh Raina","Deepak Chahar","Rahul Chahar","Deepak Hooda","Mohammed Shami","Akshar Patel","Bumrah","Chahal","Asardeep Singh","Bhuneshwar","Ashwin","Ravi Visnoi","Navdeep Saini","Umran Malik"]
    
    var items=[String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doneButtonPressed(_ sender: Any)
    {
        if let selectedRows = myTableView.indexPathsForSelectedRows
        {
            items.removeAll()
            for indexpath in selectedRows
            {
                items.append(cricketerName[indexpath.row])
            }
            print("----- You have Selected items ----")
            for item in items {
                print(items)
            }
        }
        
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  cricketerName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text=cricketerName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        let selectedCell:UITableViewCell=myTableView.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.green
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            cricketerName.remove(at: indexPath.row)
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

