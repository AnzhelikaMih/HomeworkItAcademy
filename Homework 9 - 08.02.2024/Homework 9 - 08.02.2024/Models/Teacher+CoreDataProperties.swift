//
//  Teacher+CoreDataProperties.swift
//  Homework 9 - 08.02.2024
//
//  Created by Анжелика on 5.02.24.
//
//

import Foundation
import CoreData


extension Teacher {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Teacher> {
        return NSFetchRequest<Teacher>(entityName: "Teacher")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var students: Student?

}

extension Teacher : Identifiable {

}
