//
//  Tab3FourthViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

protocol Tab3FourthViewControllerDelegate: AnyObject {
    func usernameHasBeenUpdated(to username: String)
}

class Tab3FourthViewController: UIViewController {
    var textForTextField = ""
    weak var delegate: Tab3FourthViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tab3FourthScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab3FifthViewController") as?  Tab3FifthViewController else {return}
        nextVC.textForTextField = textForTextField
        nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}


