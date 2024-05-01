//
//  UsernameContainer.swift
//  HWL9
//
//  Created by Даниил Евгеньевич on 01.05.2024.
//

import Foundation
class UsernameContainer {
    static var shared = UsernameContainer()
    var username = ""
    private init() {}
}
