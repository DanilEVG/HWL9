//
//  Tab4FourthViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab4FourthViewController: UIViewController {
    var textForTextField = ""
    var usernameChanged: (String) -> Void = { _ in }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab4FourthScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab4FifthViewController") as?  Tab4FifthViewController else {return}
        nextVC.usernameChanged = {[weak self] newValue in
            self?.usernameChanged(newValue)
        }
        nextVC.textForTextField = textForTextField
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    


}
