//
//  personalViewController.swift
//  moneyManagement
//
//  Created by HoangDucAnh on 22/12/2022.
//

import UIKit
import Firebase

class personalViewController: UIViewController {

    
    // Outlet
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
