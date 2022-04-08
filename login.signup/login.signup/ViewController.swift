//
//  ViewController.swift
//  login.signup
//
//  Created by Yushan Yang on 2022/4/8.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var accountTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var checkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
        
    }
   
    func textFieldShouldReturn(_ textFielt: UITextField) -> Bool{
        self.accountTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        self.checkTextField.resignFirstResponder()
      
        return true
    }
    
    @IBAction func pressButton(_ sender: Any) {
//    func accountEmprt()
        if let accountIsEmpty = self.accountTextField.text, accountIsEmpty.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Account can not be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: {
                return
            })
        }; if let passwordIsEmpty = self.passwordTextField.text, passwordIsEmpty.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Password can not be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: {return})
        }; if let checkIsEmpty = self.checkTextField.text, checkIsEmpty.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Check password can not be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: {return})
      }
    }
}
    
        
       // let accountIsEmpty = self.accountTextField.text
        
//        let alert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
//        print(alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { action in print("account dismiss")
//
//        }))
//        present(alert, animated: true)
        




