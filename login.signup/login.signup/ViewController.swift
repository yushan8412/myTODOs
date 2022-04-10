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
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    enum PageType {
        case login
        case signUp
    }
    
    var currentPageType: PageType = .login {
        didSet {
           viewForLogin(pageType: currentPageType)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewForLogin(pageType: .login)
        // Do any additional setup after loading the view.
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
        
    }
    
    func viewForLogin(pageType: PageType) {
        if pageType == .login{
            checkTextField.isEnabled = false
            checkTextField.backgroundColor = .gray
        } 
        
        if pageType == .signUp{
            checkTextField.isEnabled = true
            checkTextField.backgroundColor = .white
        }
    }
        
//        checkTextField.isEnabled = false;  pageType == .login
        

   
    func textFieldShouldReturn(_ textFielt: UITextField) -> Bool{
        self.accountTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        self.checkTextField.resignFirstResponder()
      
        return true
    }
    
    @IBAction func segmentedChange(_ sender: UISegmentedControl) { currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signUp
        
//        if sender.selectedSegmentIndex == 0 {
//
//        }
        
        
        

//        if sender.selectedSegmentIndex == 0 {
//            currentPageType = .login
//        } else {
//            currentPageType = .signUp
        }

    
    
    
    @IBAction func pressButton(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
//    func accountEmprt()
//        if let accountIsEmpty = self.accountTextField.text, accountIsEmpty.isEmpty {
//            let alert = UIAlertController(title: "Error", message: "Account can not be empty", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
//            present(alert, animated: true, completion: {
//                return
//            })
        if accountTextField.text? .isEmpty == true {
            let alert = UIAlertController(title: "Error", message: "Account can not be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: {return})
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
        if sender.selectedSegmentIndex == 1 {
            if accountTextField.text != "appworks_school@gmail.com",
           passwordTextField.text != "1234" {
            let alert = UIAlertController(title: "Error", message: "Signup fail", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: {return})
            
        }
            //; if accountTextField.text == "appworks_school@gmail.com" == false {
            
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
        




