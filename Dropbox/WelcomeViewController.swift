//
//  WelcomeViewController.swift
//  Dropbox
//
//  Created by Chris Argonish on 10/14/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func signInDidTouch(_ sender: UIButton) {
    }
    @IBOutlet weak var signUpDidTouch: UIButton!
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.imageView.image = UIImage(named: self.imageFile)
        self.titleLabel.text = self.titleText
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
