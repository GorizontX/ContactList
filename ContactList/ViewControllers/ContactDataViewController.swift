//
//  ContactDataViewController.swift
//  ContactList
//
//  Created by Andrey Machulin on 12.04.2023.
//

import UIKit

class ContactDataViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: \(person.fullName)"
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.phone)"
    }
    
}
