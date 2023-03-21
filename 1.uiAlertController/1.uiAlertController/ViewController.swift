//
//  ViewController.swift
//  1.uiAlertController
//
//  Created by Rajeev on 25/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var myTextLabel: UILabel!
    
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func submitButton(_ sender: UIButton)
    {
        let alertController = UIAlertController(title: "submission", message: "Enter email detials", preferredStyle: .alert)
        
       
        alertController.addTextField { (textfield) in
            textfield.placeholder = "Enter Your Email Address"
        }
        let submit = UIAlertAction(title: "Submit", style: .default) { (action) in
            if let email=alertController.textFields?.first?.text
            {
                self.myTextLabel.text="Email : \(email)"
        }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Operation has been Cancelled")
        }
        alertController.addAction(submit)
        alertController.addAction(cancel)
        present(alertController,animated: true,completion: nil)
        }
    
    
    
    
    
    /*
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }*/
    
    }
    




