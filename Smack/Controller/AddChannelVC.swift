//
//  AddChannelVC.swift
//  Smack
//
//  Created by Katherine Reinhart on 9/30/17.
//  Copyright © 2017 reinhart.digital. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var channelNameTxt: UITextField!
    @IBOutlet weak var descriptionTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createButtonPressed(_ sender: Any) {
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        channelNameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : SMACK_PURPLE_PLACEHOLDER])
        descriptionTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : SMACK_PURPLE_PLACEHOLDER])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
        
    }
    
}
