//
//  ChatsViewController.swift
//  iChat
//
//  Created by Geoff on 30/5/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK: IBActions
    
    @IBAction func createNewChatButtonPressed(_ sender: Any) {
        
        let userVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "usersTableView") as! UserTableViewController
        
        self.navigationController?.pushViewController(userVC, animated: true)
    }
    
    

}
