//
//  Tab3SecondViewController+Extension.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 01.05.2024.
//

import Foundation
extension Tab3SecondViewController: Tab3ThirdViewControllerDelegate {
    func usernameHasBeenUpdated(to username: String) {
        delegate?.usernameHasBeenUpdated(to: username)
    }
}
