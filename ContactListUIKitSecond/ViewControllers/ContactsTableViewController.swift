//
//  ContactsViewController.swift
//  ContactListUIKit
//
//  Created by Флоранс on 11.02.2024.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    private var personsData = Person.getPersonsData()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        
        let person = personsData[indexPath.row]
        
        cell.textLabel?.text = "\(person.firstName) \(person.surName)"
        
        return cell
    }
}

