//
//  Tab3FourthViewController+Extension.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 01.05.2024.
//

import Foundation
extension Tab3FourthViewController: Tab3FifthViewControllerDelegate {
    func usernameHasBeenUpdated(to username: String) {
        delegate?.usernameHasBeenUpdated(to: username)
        
    }
}
