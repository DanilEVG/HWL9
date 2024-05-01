//
//  Tab3FirstViewController+Extension.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 01.05.2024.
//

import Foundation
extension Tab3FirstViewController: Tab3SecondViewControllerDelegate {
    func usernameHasBeenUpdated(to username: String) {
        tab3FirstScreenTextField.text = username
    }
}
