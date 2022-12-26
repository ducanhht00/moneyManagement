//
//  ViewController.swift
//  moneyManagement
//
//  Created by HoangDucAnh on 21/12/2022.
//

import UIKit

class ViewController: UIViewController {

    
    // Outlet
    @IBOutlet weak var RegisterButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toRegistertPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "FirstToRegister", sender: self)
    }
    @IBAction func toLoginPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "FirstToLogin", sender: self)
    }
    
}

