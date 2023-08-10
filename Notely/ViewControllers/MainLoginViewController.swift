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
    let transitionDelegate = SPStorkTransitioningDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.layer.cornerRadius = 15
        signUpButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func signInButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let signInVC = storyboard.instantiateViewController(withIdentifier: "SignInController")

               if let presentationController = signInVC.presentationController as? UISheetPresentationController {
                   presentationController.detents = [.medium()]
                   presentationController.preferredCornerRadius = 10.0
                   presentationController.prefersScrollingExpandsWhenScrolledToEdge = false
               }

               self.present(signInVC, animated: true)
           }

    @IBAction func signUpButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpController")
        
        if let presentationController = signUpVC.presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()]
        }
        
        self.present(signUpVC, animated: true)
    }
}

