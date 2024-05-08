//
//  StyleSheet.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 08.05.2024.
//

import UIKit

struct StyleSheet {
    func createTextField() -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.tintColor = .yellow
        textField.borderStyle = .roundedRect
        return textField
    }
}
