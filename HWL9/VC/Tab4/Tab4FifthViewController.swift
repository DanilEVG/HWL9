//
//  Tab4FifthViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab4FifthViewController: UIViewController {

    @IBOutlet weak var tab4FifthScreenTextField: UITextField!
    var textForTextField = ""
    var usernameChanged: (String) -> Void = { _ in }
    override func viewDidLoad() {
        super.viewDidLoad()
        tab4FifthScreenTextField.text = textForTextField
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab4FifthScreenGoToFirstScreenTapped(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func tab4FifthScreenTextFieldChanged(_ sender: UITextField) {
        usernameChanged(tab4FifthScreenTextField.text ?? "")
    }
    

}
