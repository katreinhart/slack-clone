//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Katherine Reinhart on 9/24/17.
//  Copyright © 2017 reinhart.digital. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // Outlets
    @IBOutlet var usernameTxt: UITextField!
    @IBOutlet var emailTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
    @IBOutlet var userImg: UIImageView!
    

    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let pass = passwordTxt.text , passwordTxt.text != "" else { return }
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if ( success) {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        print("Logged in user", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    
    @IBAction func generateBgPressed(_ sender: Any) {
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
