//
//  RegisterViewController.swift
//  moneyManagement
//
//  Created by HoangDucAnh on 21/12/2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    // Outlet
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBAction func registerButton(_ sender: UIButton) {
        if let email = emailLabel.text , let password = passwordLabel.text{
            
            Auth.auth().createUser(withEmail: email, password: password) { [self] authResult, error in
                if let e = error {
                    print(e)
                } else {
                    print(" register success")
                    self.performSegue(withIdentifier: "RegisterToMain", sender: self)
                }
            }
            
        }
    }
    
}
