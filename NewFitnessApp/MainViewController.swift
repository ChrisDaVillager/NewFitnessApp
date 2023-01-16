//
//  MainViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/15/23.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func loginButton(_ sender: Any) {
        // log user in
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        // sign user up
     
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "White Label App"
    }
    
}
