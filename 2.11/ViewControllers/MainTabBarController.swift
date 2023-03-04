//
//  MainTabBarController.swift
//  2.11
//
//  Created by Айдар Оспанов on 04.03.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    let people = Person.getPeople()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transmitInformation()
        setupTabBar()
    }
    
    //MARK: Private Methods
    
    private func setupTabBar() {
        tabBar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.layer.borderColor = UIColor.darkGray.cgColor
        tabBar.layer.borderWidth = 1
    }
    
    private func transmitInformation() {
        guard let contactVC = viewControllers?.first as? ContactTableViewController else { return }
        contactVC.peopleContact = people
        
        guard let subjectVC = viewControllers?.last as? SubjectTableViewController else { return }
        subjectVC.peopleSubject = people
    }
}
