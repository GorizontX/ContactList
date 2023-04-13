//
//  Person.swift
//  ContactList
//
//  Created by Andrey Machulin on 11.04.2023.
//

struct Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Person] {
        
        var persons: [Person] = []
        
        let dataStore = DataStore()
        
        let randomName = dataStore.names.randomElement()!
        let randomSurname = dataStore.surnames.randomElement()!
        let randomPhone = dataStore.phones.randomElement()!
        let randomEmail = dataStore.emails.randomElement()!
        
        for _ in 0...7  {
            let person = Person(name: randomName, surname: randomSurname, phone: randomPhone, email: randomEmail)
            persons.append(person)
        }
        
        return persons
    }
    
}
