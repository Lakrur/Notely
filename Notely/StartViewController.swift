//
//  StartViewController.swift
//  Notely
//
//  Created by Yehor Krupiei on 05.08.2023.
//

import UIKit


class StartViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.semanticContentAttribute = .forceRightToLeft
        startButton.layer.cornerRadius = 15

       
    }
    

    
    @IBAction func startButtonAction(_ sender: UIButton) {
        
        let mainLoginVC = self.storyboard?.instantiateViewController(withIdentifier: "MainLoginViewController") as! MainLoginViewController
        mainLoginVC.modalPresentationStyle = .fullScreen
        present(mainLoginVC, animated: true)
        if sender.isSelected {
            sender.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.50).cgColor
            sender.layer.shadowOffset = CGSize(width: 0, height: 3)
            sender.layer.shadowOpacity = 1.0
            sender.layer.shadowRadius = 10.0
            sender.layer.masksToBounds = false
            
        }
    }
    
}

