//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Katherine Reinhart on 9/24/17.
//  Copyright © 2017 reinhart.digital. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


}
