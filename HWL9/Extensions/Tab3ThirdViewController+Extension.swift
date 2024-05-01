//
//  Tab3ThirdViewController+Extension.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 01.05.2024.
//

import Foundation
extension Tab3ThirdViewController: Tab3FourthViewControllerDelegate {
    func usernameHasBeenUpdated(to username: String) {
        delegate?.usernameHasBeenUpdated(to: username)
    }
}
