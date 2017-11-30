//
//  SignInVC.swift
//  devslopes-social
//
//  Created by Wojtek on 22.11.2017.
//  Copyright © 2017 Wojtek. All rights reserved.
//

import UIKit
import FacebookLogin

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

