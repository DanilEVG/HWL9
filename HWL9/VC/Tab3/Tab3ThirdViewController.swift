//
//  Tab3ThirdViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

protocol Tab3ThirdViewControllerDelegate: AnyObject {
    func usernameHasBeenUpdated(to username: String)
}

class Tab3ThirdViewController: UIViewController {
    var textForTextField = ""
    weak var delegate:Tab3ThirdViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab3ThirdScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab3FourthViewController") as?  Tab3FourthViewController else {return}
        nextVC.textForTextField = textForTextField
        nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
 
}


