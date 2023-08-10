//
//  SingInViewController.swift
//  Notely
//
//  Created by Yehor Krupiei on 07.08.2023.
//

import UIKit

class SignInViewController: UIViewController {
    

    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateViewConstraints()
        
        signInButton.layer.cornerRadius = 8
        
    }
    
    override func updateViewConstraints() {
            self.view.frame.size.height = UIScreen.main.bounds.height - 150
            self.view.frame.origin.y =  70
            self.view.roundCorners(corners: [.topLeft, .topRight], radius: 10.0)
            super.updateViewConstraints()
     }


   

}
