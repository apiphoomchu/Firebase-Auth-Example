//
//  ViewController.swift
//  Firebase-Auth-Example
//
//  Created by Apiphoom Chuenchompoo on 18/9/2567 BE.
//

import UIKit
import FirebaseAuth

class AuthViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signUpTapped(_ sender: Any) {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            print("Email or password is missing")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Error creating user: \(error.localizedDescription)")
            } else {
                print("User created successfully")
                // Navigate to the next screen / View
            }
        }
    }

    @IBAction func signInTapped(_ sender: Any) {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            print("Email or password is missing")
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Error signing in: \(error.localizedDescription)")
            } else {
                print("User signed in successfully")
                // Navigate to the next screen / View
            }
        }
    }
}
