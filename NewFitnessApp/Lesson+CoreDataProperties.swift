//
//  Lesson+CoreDataProperties.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/29/23.
//
//

import Foundation
import CoreData


extension Lesson {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Lesson> {
        return NSFetchRequest<Lesson>(entityName: "Lesson")
    }

    @NSManaged public var instructorName: String?
    @NSManaged public var lessonType: String?
    @NSManaged public var targetDate: String?

}

extension Lesson : Identifiable {

}
