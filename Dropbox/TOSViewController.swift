//
//  TOSViewController.swift
//  Dropbox
//
//  Created by Chris Argonish on 10/16/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class TOSViewController: UIViewController {
    
    @IBOutlet weak var tosWebView: UIWebView!
    
    let url = "https://www.dropbox.com/terms?mobile=1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        self.title = "Terms of Service"
        
        // Convert the url String to a NSURL object.
        let requestURL = NSURL(string:url)
        // Place the URL in a URL Request.
        let request = NSURLRequest(url: requestURL! as URL)
        // Load Request into WebView.
        tosWebView.loadRequest(request as URLRequest)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneBtnDidPress(_ sender: UIButton) {
    
        dismiss(animated: true, completion: nil)
    
    }
    
    
}
