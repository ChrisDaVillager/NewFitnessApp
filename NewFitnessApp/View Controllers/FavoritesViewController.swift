//
//  FavoritesViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 2/1/23.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var models = [NewLessonItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To-Do"
        view.addSubview(tableView)
        getLessons()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func addLesson(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "New Item", message: "Enter new item", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Submit", style: .cancel, handler: { [weak self] _ in
            guard let field = alert.textFields?.first, let text = field.text, !text.isEmpty else {
                return
            }
            
            self?.createLesson(name: text)
        }))
        
        present(alert, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = models[indexPath.row]
        
        let newAlert = UIAlertController(title: "Settings", message: nil, preferredStyle: .actionSheet)
        
        newAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        newAlert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { _ in
            
            let alert = UIAlertController(title: "Edit Item", message: "Edit current item", preferredStyle: .alert)
            
            alert.addTextField(configurationHandler: nil)
            alert.textFields?.first?.text = item.name
            alert.addAction(UIAlertAction(title: "Save", style: .cancel, handler: { [weak self] _ in
                guard let field = alert.textFields?.first, let newName = field.text, !newName.isEmpty else {
                    return
                }
                
                self?.updateLesson(item: item, newLesson: newName)
            }))
            
            self.present(alert, animated: true)
        }))
        
        newAlert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { [weak self] _ in
            self?.deleteLesson(item: item)
        }))

        present(newAlert, animated: true)
    }
    
    
    
    // CORE DATA
    func getLessons() {
        do {
            models = try context.fetch(NewLessonItems.fetchRequest())
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
        }
    }

    func createLesson(name: String) {
        let newLesson = NewLessonItems(context: context)
        newLesson.name = name
        newLesson.date = Date()
        
        do {
            try context.save()
            getLessons()
        }
        catch {
        }
    }
    
    func deleteLesson(item: NewLessonItems) {
        context.delete(item)
        
        do {
            try context.save()
            getLessons()
        }
        catch {
        }
    }
    
    func updateLesson(item: NewLessonItems, newLesson: String) {
        item.name = newLesson
        
        do {
            try context.save()
            getLessons()
        }
        catch {
        }
    }
}
