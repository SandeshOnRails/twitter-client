//
//  LoginViewController.swift
//  Twitter
//
//  Created by Sandesh Basnet on 2/20/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if UserDefaults.standard.bool(forKey: "loggedIn") == true {
            self.performSegue(withIdentifier: "login", sender: nil)
        }
    
        
    }
    

    @IBAction func loginButtonClicked(_ sender: Any) {
        
        let url = "https://api.twitter.com/oauth/request_token"
        
        TwitterAPICaller.client?.login(url: url, success: {
            
            UserDefaults.standard.set(true, forKey: "loggedIn")
             self.performSegue(withIdentifier: "login", sender: nil)
        },
        failure: { (Error) in
            print(Error)
        })
    }
    

}
