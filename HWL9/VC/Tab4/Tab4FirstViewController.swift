//
//  Tab4FirstViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab4FirstViewController: UIViewController {

    @IBOutlet weak var tab4FirstScreenTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab4FirstScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab4SecondViewController") as?  Tab4SecondViewController else {return}
        nextVC.textForTextField = tab4FirstScreenTextField.text ?? ""
        nextVC.usernameChanged = {[weak self] newValue in
            self?.tab4FirstScreenTextField.text = newValue
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    

}
