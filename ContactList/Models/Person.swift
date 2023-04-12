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
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
}
