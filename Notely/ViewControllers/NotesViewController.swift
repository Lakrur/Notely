//
//  NotesViewController.swift
//  Notely
//
//  Created by Yehor Krupiei on 08.08.2023.
//

import UIKit

class NotesViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        segmentedControl.layer.cornerRadius = 20
       
        //addLeftImageTo(textField: textField, andImage: UIImage(named: "magnifyingglass") ?? UIImage(named: "magnifyingglass"))
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
