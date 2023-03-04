//
//  Person.swift
//  2.11
//
//  Created by Айдар Оспанов on 04.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getPeople() -> [Person] {
        var people: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        for index in 0..<names.count {
            people.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        return people
    }
}
