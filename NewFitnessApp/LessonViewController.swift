//
//  LessonViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/15/23.
//

import UIKit

class LessonViewController: UIViewController {
    
    @IBOutlet weak var lessonTypeTextField: UITextField!
    @IBOutlet weak var instructorNameTextField: UITextField!
    @IBOutlet weak var targetDatePicker: UIDatePicker!
    @IBOutlet weak var specialInstructionsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveLessonButton(_ sender: UIBarButtonItem) {
        print("User tapped save button.")
        
        let lessonType = lessonTypeTextField.text ?? ""
        let instructorName = instructorNameTextField.text ?? ""
        let targetDate = targetDatePicker.date
        let specialInstructions = specialInstructionsTextField.text ?? ""
        
        print("User would like to schedule \(lessonType) with \(instructorName) on \(targetDate).")
        print("User has requested following instructions: \(specialInstructions).")
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
