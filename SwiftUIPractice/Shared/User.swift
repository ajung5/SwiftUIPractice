//
//  User.swift
//  SwiftUIPractice
//
//  Created by Agung Nawawi on 07/08/24.
//

import Foundation

// MARK: User Array
struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
}
