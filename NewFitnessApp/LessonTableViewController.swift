//
//  LessonTableViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/25/23.
//

import UIKit

class LessonTableViewController: UITableViewController {

    var lessons = [Lesson]()
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .none

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return lessons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
