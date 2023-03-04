//
//  SubjectViewController.swift
//  2.11
//
//  Created by Айдар Оспанов on 04.03.2023.
//

import UIKit

final class SubjectTableViewController: UITableViewController {
    
    var peopleSubject: [Person] = []
    
    //MARK: Override Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        peopleSubject.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        peopleSubject[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subject", for: indexPath)
        let contact = peopleSubject[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
