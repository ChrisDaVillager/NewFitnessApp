//
//  LessonTableViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/25/23.
//

import UIKit

class LessonTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddLessonViewControllerDelegate {
    
    @IBOutlet var lessonTableView: UITableView!
    
    var lessonsArray = [LessonsStruct]()

    let dateFormatter = DateFormatter()
    let newLessonTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .none
        newLessonTableView.delegate = self
        newLessonTableView.dataSource = self
        
        lessonTableView.reloadData()
    }
    
    func addLessonViewController(_ addLessonViewController: AddLessonViewController, didAddLesson lesson: LessonsStruct) {
        print("HELLO MOTO")
        
        lessonsArray.append(lesson)
        
        // lesson 1
        
        lessonTableView.reloadData()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        lessonTableView.reloadData()
    }


//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return lessonsArray.count
//    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessonsArray.count
    }

    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt
                            indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "lessonCellIdentifier", for: indexPath) as! lessonTableViewCell
        
        let lesson = lessonsArray[indexPath.row]
        
        cell.typeTitle?.text = lesson.instructorName + " " + lesson.lessonType + " " +
        lesson.specialInstructions
        
        cell.secondaryTitle?.text = dateFormatter.string(for: dateFormatter)
        
        return cell
    }
    
    
    @objc(tableView:heightForRowAtIndexPath:) func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Make the first row larger to accommodate a custom cell.
        if indexPath.row == 0 {
            return 80
        }
        
        // Use the default size for all other rows.
        return UITableView.automaticDimension
     
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        let addLessonViewController = navigationController.topViewController as! AddLessonViewController
        addLessonViewController.delegate = self
    }
    

}
