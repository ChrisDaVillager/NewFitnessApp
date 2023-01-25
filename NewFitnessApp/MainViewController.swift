//
//  MainViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/25/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signupButton(_ sender: UIButton) {
        print("User signed up!")
    }
    
    
}
