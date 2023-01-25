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
    let targetDatePicker: Date
    
    init(lessonType: String, instructorName: String, targetDatePicker: Date) {
        
        self.lessonType = lessonType
        self.instructorName = instructorName
        self.targetDatePicker = targetDatePicker
    }
}
