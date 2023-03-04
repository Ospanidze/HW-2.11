//
//  ContactViewController.swift
//  2.11
//
//  Created by Айдар Оспанов on 04.03.2023.
//

import UIKit

final class ContactTableViewController: UITableViewController {
    
    var peopleContact: [Person] = []

    //MARK: Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC.person = peopleContact[indexPath.row]
    }
}

extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        peopleContact.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = peopleContact[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullname
        cell.contentConfiguration = content
        return cell
    }
}
