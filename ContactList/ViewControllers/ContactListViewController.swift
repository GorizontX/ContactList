//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Andrey Machulin on 11.04.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
      
        content.text = person.fullName        
        cell.contentConfiguration = content
        
        return cell
    }
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDataVC = segue.destination as? ContactDataViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDataVC.person = persons[indexPath.row]
    }
    
}
