//
//  MainLoginViewController.swift
//  Notely
//
//  Created by Yehor Krupiei on 06.08.2023.
//

import UIKit

class MainLoginViewController: UIViewController {
    
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signInButton.layer.cornerRadius = 15
        signUpButton.layer.cornerRadius = 15
    }
    

   

}
