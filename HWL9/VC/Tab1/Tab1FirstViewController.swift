//
//  FirstViewController.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 30.04.2024.
//

import UIKit

class Tab1FirstViewController: UIViewController {

    @IBOutlet weak var tab1FirstScreenLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tab1FirstScreenLabel.text = "Hello, \(UsernameContainer.shared.username)"
    }

}
