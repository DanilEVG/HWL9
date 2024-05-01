//
//  Tab3FifthViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

protocol Tab3FifthViewControllerDelegate: AnyObject {
    func usernameHasBeenUpdated(to username: String)
}

class Tab3FifthViewController: UIViewController {
    
    @IBOutlet weak var tab3FifthScreenTextField: UITextField!
    
    weak var delegate: Tab3FifthViewControllerDelegate?
    var textForTextField = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tab3FifthScreenTextField.text = textForTextField
    }
    
    @IBAction func tab3FifthScreenGoToFirstScreenTapped(_ sender: UIButton) {
        delegate?.usernameHasBeenUpdated(to: tab3FifthScreenTextField.text ?? "")
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}


