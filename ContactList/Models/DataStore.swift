//
//  DataStore.swift
//  ContactList
//
//  Created by Andrey Machulin on 12.04.2023.
//

class DataStore {
    let names = ["Andrey", "Mikhail", "Anastasia", "Liliya", "Anatoly", "Dmitry", "Ilya", "Elena", "Egor"]
    let surnames = ["Love", "Faith", "Hope", "Mercy", "Grace", "Light", "Path", "Trust","Know"]
   
    let phones = ["654446", "654783", "654992", "654209", "632800", "654771", "632456", "654113", "654255"]
    let emails = [
        "big.boss@ambrella.com",
        "secret.agent@ambrella.com",
        "nobody.knows.who.it.is@ambrella.com",
        "bad.guy@ambrella.com",
        "pizza.guy@ambrella.com",
        "cat@ambrella.com",
        "small.boss@ambrella.com",
        "she@ambrella.com",
        "he@@ambrella.com"
    ]
    
    static func getContact() -> Person {
        let dataStore = DataStore()
        let randomName = dataStore.names.randomElement()!
        let randomSurname = dataStore.surnames.randomElement()!
        let randomPhone = dataStore.phones.randomElement()!
        let randomEmail = dataStore.emails.randomElement()!
        
        return Person(name: randomName, surname: randomSurname, phone: randomPhone, email: randomEmail)
    }
    
}
