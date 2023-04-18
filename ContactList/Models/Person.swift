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
        
        let randomName = dataStore.names.shuffled()
        let randomSurname = dataStore.surnames.shuffled()
        let randomPhone = dataStore.phones.shuffled()
        let randomEmail = dataStore.emails.shuffled()
        
        let maximumValue = randomName.count
        
        for index in 0..<maximumValue  {
                
            
            let person = Person(
                name: randomName[index],
                surname: randomSurname[index],
                phone: randomPhone[index],
                email: randomEmail[index]
            )
            persons.append(person)
        }
        return persons
    }
    
}
