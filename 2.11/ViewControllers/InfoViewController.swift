//
//  InfoViewController.swift
//  2.11
//
//  Created by Айдар Оспанов on 04.03.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    
    //MARK: @IBOutlets
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    //MARK: Public Properties
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullname
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
   
