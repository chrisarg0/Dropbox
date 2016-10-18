//
//  CreateAccountRootViewController.swift
//  Dropbox
//
//  Created by Chris Argonish on 10/14/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class CreateAccountRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "signUpSegue", sender: nil)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPresentSignUp(_ sender: UIButton) {
        
        let signUpRootVC = UIStoryboard(name: "CreateAccountRootViewController", bundle: nil)
        let signUpVC = signUpRootVC.instantiateViewController(withIdentifier: "signUpVC")
        self.present(signUpVC, animated: true, completion: nil)
        
    }

    
}
