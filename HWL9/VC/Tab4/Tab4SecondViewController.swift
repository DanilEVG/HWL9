//
//  Tab4SecondViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab4SecondViewController: UIViewController {
    var textForTextField = ""
    var usernameChanged: (String) -> Void = { _ in }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab4SecondScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab4ThirdViewController") as?  Tab4ThirdViewController else {return}
        nextVC.textForTextField = textForTextField
        nextVC.usernameChanged = {[weak self] newValue in
            self?.usernameChanged(newValue)
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
