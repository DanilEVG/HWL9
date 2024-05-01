//
//  Tab3FirstViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab3FirstViewController: UIViewController {
    

    @IBOutlet weak var tab3FirstScreenTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tab3FirstScreenNextTapped(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Tab3SecondViewController") as?  Tab3SecondViewController else {return}
        
        nextVC.textForTextField = tab3FirstScreenTextField.text ?? ""
        
        nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}



