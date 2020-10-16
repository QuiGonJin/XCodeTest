//
//  Data.swift
//  XCodeTest
//
//  Created by Kevin Chen on 10/14/20.
//  Copyright © 2020 Kevin Chen. All rights reserved.
//

import Foundation
import SwiftUI

/*
 here we are declaring the variable 'developers' in the global scope
 this is bad practice!
 
 global variables can be accessed anywhere in the project, but that also means
 anyone anywhere in the project can mess up the state of this variable
 */
let developers = [
    Developer(id:1001, codeName: "Buck", profileImageName: "scv", aboutText: "woo hoo!"),
    Developer(id:1002, codeName: "Sheila", profileImageName: "medic", aboutText: "need some triage?")
]


// Creates a struct called Developer that conforms to Identifiable
// Identifiable is a Protocol; Protocols are sets of rules that must be followed
// Identifiable dictates a Struct that wants to be an Identifier must have the field 'id'
struct Developer : Identifiable {
    var id:Int
    var codeName:String
    var profileImageName: String
    var aboutText: String
}
