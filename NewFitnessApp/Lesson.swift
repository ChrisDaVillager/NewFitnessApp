//
//  LessonViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/24/23.
//

import Foundation

class Lesson {
    
    let lessonType: String
    let instructorName: String
    let targetDate: Date
    
    init(lessonType: String, instructorName: String, targetDate: Date) {
        
        self.lessonType = lessonType
        self.instructorName = instructorName
        self.targetDate = targetDate
    }
}
