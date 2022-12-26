//
//  LoginViewController.swift
//  moneyManagement
//
//  Created by HoangDucAnh on 21/12/2022.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    //Outlet
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailText.text = "1@2.com" //"1@3.com"
        passwordText.text = "123456"
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        
        if let email = emailText.text, let password = passwordText.text {
            Auth.auth().signIn(withEmail: email, password: password) { [self]authResult, error in
                if let e = error {
                    print(e)
                    let alert: UIAlertController = UIAlertController(title: "Notification", message: "Incorrect email or password!", preferredStyle: UIAlertController.Style.alert)
                    let btnOK: UIAlertAction = UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: nil)
                    alert.addAction(btnOK)
                    
                    present(alert, animated: true, completion: nil)
                } else {
                    //self.performSegue(withIdentifier: "loginToChat", sender: self)
                    self.performSegue(withIdentifier: "LoginToMain", sender: self)
                }
            }
        }
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    

}
