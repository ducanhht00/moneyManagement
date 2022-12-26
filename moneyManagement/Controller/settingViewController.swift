//
//  settingViewController.swift
//  moneyManagement
//
//  Created by HoangDucAnh on 22/12/2022.
//

import UIKit
import Firebase

class settingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableSetting: UITableView!
    var listFunc = ["Logout","Personal","Back"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableSetting.dataSource = self
        tableSetting.delegate = self
        print(Auth.auth().currentUser?.email!)
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSettingList = tableView.dequeueReusableCell(withIdentifier: "settingCell")
        cellSettingList?.textLabel?.text = listFunc[indexPath.row]
        return cellSettingList!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listFunc.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch listFunc[indexPath.row]{
        case "Logout":
            do {
                try Auth.auth().signOut()
                print("success")
            } catch let signOutErr as NSError{
                print(signOutErr)
            }
            self.performSegue(withIdentifier: "logOutSergue", sender: self)
        case "Personal":
            self.performSegue(withIdentifier: "toPersonal", sender: self)
                
        case "Back":
            self.dismiss(animated: true)
        default:
            print("defaul;t")
        }
    }
}
