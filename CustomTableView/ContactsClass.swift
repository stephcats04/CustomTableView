//
//  ContactsClass.swift
//  CustomTableView
//
//  Created by Stephanie Catalano on 7/23/16.
//  Copyright © 2016 Stephanie Catalano. All rights reserved.
//

import Foundation

class contacts{
    var fN : String
    var lN : String
    var phNum : String
    var email : String
    let contactId : String = NSUUID().UUIDString
    
    init (firstName: String, lastName: String, phoneNumber: String, emailAddress: String)
    {
        self.fN = firstName
        self.lN = lastName
        self.email = emailAddress
        self.phNum = phoneNumber
        
    }
}

