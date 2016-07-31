//
//  DataManager.swift
//  CustomTableView
//
//  Created by Stephanie Catalano on 7/31/16.
//  Copyright © 2016 Stephanie Catalano. All rights reserved.
//

import Foundation

class DataManager {
    
    static let sharedManager : DataManager = DataManager()
    
    var data = [contacts(firstName: "Stephanie", lastName: "Catalano", phoneNumber: "9542635341", emailAddress:"s.n@c.com" ), contacts(firstName: "Bob", lastName: "Doe", phoneNumber: "123456", emailAddress: "email2.com"), contacts(firstName: "Joe", lastName: "Doe", phoneNumber: "123654", emailAddress: "email3.com")]
    
    
    func getContacts() -> [contacts] {
        
        return [contacts]()
    }
    
    func updateContact(updatedContact : contacts) -> Bool {
        
        return false
        
    }
    

}


