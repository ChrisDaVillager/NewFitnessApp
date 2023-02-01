//
//  NewLessonItems+CoreDataProperties.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 2/1/23.
//
//

import Foundation
import CoreData


extension NewLessonItems {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewLessonItems> {
        return NSFetchRequest<NewLessonItems>(entityName: "NewLessonItems")
    }

    @NSManaged public var name: String?
    @NSManaged public var date: Date?

}

extension NewLessonItems : Identifiable {

}
