//
//  MainLoginViewController.swift
//  Notely
//
//  Created by Yehor Krupiei on 06.08.2023.
//

import UIKit
import BonsaiController

class MainLoginViewController: UIViewController {
    
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.layer.cornerRadius = 15
        signUpButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func signInButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signInVC = storyboard.instantiateViewController(withIdentifier: "SignInController")
        signInVC.transitioningDelegate = self
        signInVC.modalPresentationStyle = .custom

        self.present(signInVC, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

       // if segue.destination is YourViewController {
            segue.destination.transitioningDelegate = self
            segue.destination.modalPresentationStyle = .custom
//        }
    }
    
    
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpController")
//        signUpVC.transitioningDelegate = self
//        signUpVC.modalPresentationStyle = .custom
        
        if let presentationController = signUpVC.presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()]
        }
        
        self.present(signUpVC, animated: true)
    }
}

extension MainLoginViewController: BonsaiControllerDelegate {
    
    // return the frame of your Bonsai View Controller
    func frameOfPresentedView(in containerViewFrame: CGRect) -> CGRect {
        
        return CGRect(origin: CGPoint(x: 0, y: containerViewFrame.height / 1.8), size: CGSize(width: containerViewFrame.width, height: containerViewFrame.height / 1.8))
    }
    
    // return a Bonsai Controller with SlideIn or Bubble transition animator
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
    
        /// With Background Color ///
    
        // Slide animation from .left, .right, .top, .bottom
        return BonsaiController(fromDirection: .bottom, backgroundColor: UIColor(white: 0, alpha: 0.5), presentedViewController: presented, delegate: self)
        
        // or Bubble animation initiated from a view
        //return BonsaiController(fromView: yourOriginView, backgroundColor: UIColor(white: 0, alpha: 0.5), presentedViewController: presented, delegate: self)
    
    
        /// With Blur Style ///
        
        // Slide animation from .left, .right, .top, .bottom
        //return BonsaiController(fromDirection: .bottom, blurEffectStyle: .light, presentedViewController: presented, delegate: self)
        
        // or Bubble animation initiated from a view
        //return BonsaiController(fromView: yourOriginView, blurEffectStyle: .dark,  presentedViewController: presented, delegate: self)
    }
}
