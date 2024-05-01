//
//  Tab3SecondViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

protocol Tab3SecondViewControllerDelegate: AnyObject {
    func usernameHasBeenUpdated(to username: String)
}

class Tab3SecondViewController: UIViewController {
    var textForTextField = ""
    weak var delegate: Tab3SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab3SecondScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab3ThirdViewController") as?  Tab3ThirdViewController else {return}
        
        nextVC.textForTextField = textForTextField
        
        nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
 

}

