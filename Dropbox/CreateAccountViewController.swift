//
//  CreateAccountViewController.swift
//  Dropbox
//
//  Created by Chris Argonish on 10/14/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var pwStrength: UIImageView!
    @IBOutlet weak var createButton: UIButton!
    let weakImage = UIImage(named: "signup_1")
    let sosoImage = UIImage(named: "signup_2")
    let goodImage = UIImage(named: "signup_3")
    let greatImage = UIImage(named: "signup_4")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameField.becomeFirstResponder()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        firstNameField.becomeFirstResponder()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func welcomeButtonDidTouch(_ sender: UIButton) {
        
        navigationController!.popViewController(animated: true)
        
    }
    
    @IBAction func pwEditDidChange(_ sender: AnyObject) {
        
        let characterCount = passwordField.text?.characters.count
        
        if characterCount! < 4 {
            print("weak password")
            pwStrength.image = weakImage
        } else if characterCount! < 6 {
            print("So-So password")
            pwStrength.image = sosoImage
        } else if characterCount! < 8 {
            print("Good password")
            pwStrength.image = goodImage
        } else {
            print("Great! Password")
            pwStrength.image = greatImage
        }
        
        if firstNameField.text!.isEmpty || passwordField.text!.isEmpty || lastNameField.text!.isEmpty || emailField.text!.isEmpty {
            createButton.isEnabled = false
        } else {
            createButton.isEnabled = true
        }
    }
    
    @IBAction func showActionSheet(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "", message: "Before you can complete your registration, you must accept the Dropbox Terms of Service", preferredStyle: .actionSheet)
        
        // create a cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // handle cancel response here. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alertController
        alertController.addAction(cancelAction)
        
        // create an OK action
        let agreeAction = UIAlertAction(title: "I Agree", style: .default) { (action) in
            // handle response here.
            self.performSegue(withIdentifier: "acceptTermsSegue", sender: nil)
        }
        // add the OK action to the alert controller
        alertController.addAction(agreeAction)
        
        let viewTermsAction = UIAlertAction(title: "View Terms", style: .default) { (action) in
            
            self.performSegue(withIdentifier: "tosSegue", sender: nil)
            
        }
        
        alertController.addAction(viewTermsAction)
        
        present(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
    }
}
