//
//  LoginViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/25/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        print("User logged in!")
    }
}
