//
//  LessonViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/15/23.
//

import UIKit

protocol AddLessonViewControllerDelegate {
    
    func addLessonViewController(_ addLessonViewController: AddLessonViewController, didAddLesson lesson: LessonsStruct)
}

class AddLessonViewController: UIViewController {
    
    @IBOutlet weak var lessonTypeTextField: UITextField!
    @IBOutlet weak var instructorNameTextField: UITextField!
    @IBOutlet weak var targetDatePicker: UIDatePicker!
    @IBOutlet weak var specialInstructionsTextField: UITextField!
    
    var delegate: AddLessonViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveLessonButton(_ sender: UIBarButtonItem) {

        
        let dateFormatter = DateFormatter()

        let lessonType = lessonTypeTextField.text ?? ""
        let instructorName = instructorNameTextField.text ?? ""
        let targetDate = targetDatePicker.date
        let specialInstructions = specialInstructionsTextField.text ?? ""
        let newLesson = LessonsStruct(instructorName: instructorName, lessonType: lessonType, targetDate: dateFormatter.string(for: targetDate) ?? "", specialInstructions: specialInstructions)
        
        delegate?.addLessonViewController(self, didAddLesson: newLesson)
    
        
        dismiss(animated: true, completion: nil)
        
        print("User tapped save button.")
        print("User would like to schedule \(lessonType) with \(instructorName) on \(targetDate).")
        print("User has requested following instructions: \(specialInstructions).")
        
        
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
