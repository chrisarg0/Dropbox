//
//  SignInRootViewController.swift
//  Dropbox
//
//  Created by Chris Argonish on 10/14/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "signInSegue", sender: nil)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPresentSignIn(_ sender: UIButton) {
        
        let signInRootVC = UIStoryboard(name: "SignInRootViewController", bundle: nil)
        let signInVC = signInRootVC.instantiateViewController(withIdentifier: "signInVC")
        self.present(signInVC, animated: true, completion: nil)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
