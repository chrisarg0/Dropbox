//
//  SignInViewController.swift
//  Dropbox
//
//  Created by Chris Argonish on 10/14/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func welcomeButtonDidTouch(_ sender: UIButton) {
        
        navigationController!.popViewController(animated: true)

        
    }
    
    @IBAction func signInFormisChanged(_ sender: UITextField) {
        
        if passwordField.text!.isEmpty || emailField.text!.isEmpty {
            signInButton.isEnabled = false
        } else {
            signInButton.isEnabled = true
        }
        
    }
    
    @IBAction func troubleSigningInDidTouch(_ sender: UIButton) {
    
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // create a cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // handle cancel response here. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alertController
        alertController.addAction(cancelAction)
        
        // create an OK action
        let forgotPasswordAction = UIAlertAction(title: "Forgot Password?", style: .default) { (action) in
            // handle response here.
        }
        // add the OK action to the alert controller
        alertController.addAction(forgotPasswordAction)
        
        let singleSignOnAction = UIAlertAction(title: "Single Sign-On", style: .default) { (action) in
        }
        
        alertController.addAction(singleSignOnAction)
        
        present(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
    
    }
    

}
