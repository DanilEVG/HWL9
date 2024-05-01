//
//  Tab4ThirdViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab4ThirdViewController: UIViewController {
    var textForTextField = ""
    var usernameChanged: (String) -> Void = { _ in }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab4ThirdScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab4FourthViewController") as?  Tab4FourthViewController else {return}
        nextVC.textForTextField = textForTextField
        nextVC.usernameChanged = {[weak self] newValue in
            self?.usernameChanged(newValue)
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
  

}
