//
//  MainPageViewController.swift
//  moneyManagement
//
//  Created by HoangDucAnh on 21/12/2022.
//

import UIKit

class MainPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func settingButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "settingSergue", sender: self)
    }
    @IBAction func ChatButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toMenuChat", sender: self)
    }
    
}
