//
//  Tab2SecondViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit



class Tab2SecondViewController: UIViewController {

    @IBOutlet weak var tab2SecondScreenTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab2SecondScreenButtonTapped(_ sender: UIButton) {
        UsernameContainer.shared.username = tab2SecondScreenTextField.text ?? ""
        
        dismiss(animated: true)
    }
    

}
