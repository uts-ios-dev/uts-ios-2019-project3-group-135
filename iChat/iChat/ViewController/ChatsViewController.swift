//
//  ChatsViewController.swift
//  iChat
//
//  Created by Geoff on 30/5/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import UIKit
import Firebase

class ChatsViewController: UIViewController {
  
    @IBOutlet weak var inputTextField: UITextField!

    override func viewDidLoad() {
        let ref = Database.database().reference(fromURL: "https://ichat-fe3fe.firebaseio.com/")
        let usersReference = ref.child("users")
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    //MARK: IBActions
    
    @IBAction func createNewChatButtonPressed(_ sender: Any) {
        
        let userVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "usersTableView") as! UserTableViewController
        
        self.navigationController?.pushViewController(userVC, animated: true)
    }
    
    @IBAction func sendButton(_ sender: Any) {
        let ref = Database.database().reference().child("messages")
        let childRef = ref.childByAutoId()
        let values = ["text": inputTextField.text!]
        childRef.updateChildValues(values)
    }
}
