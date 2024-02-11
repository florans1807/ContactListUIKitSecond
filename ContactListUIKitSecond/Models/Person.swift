//
//  Person.swift
//  ContactListUIKit
//
//  Created by Флоранс on 11.02.2024.
//

struct Person: Equatable {
    let firstName: String
    let surName: String
    let email: String
    let phoneNumber: String
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return
            lhs.firstName == rhs.firstName ||
            lhs.surName == rhs.surName ||
            lhs.email == rhs.email ||
            lhs.phoneNumber == rhs.phoneNumber
    }
    
    static func getPersonsData() -> [Person] {
        let dataManager = DataManager.shared
        var persons: [Person] = []
        
        while persons.count <= dataManager.names.count {
            let person = Person(
                firstName: dataManager.names.randomElement() ?? "",
                surName: dataManager.surnames.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? "",
                phoneNumber: dataManager.phones.randomElement() ?? ""
            )
            
            if !persons.contains(person) {
                persons.append(person)
            }
        }
        
        return persons
    }
    
}
