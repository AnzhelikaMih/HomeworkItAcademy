//
//  Structs.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//

import UIKit

struct StudentViewModel {
    var name: String
    var age: Int16
    var teacher: TeacherViewModel
}

struct TeacherViewModel: Equatable {
    var firstName: String
    var lastName: String
    
    static func ==(lhs: TeacherViewModel, rhs: TeacherViewModel) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
}

