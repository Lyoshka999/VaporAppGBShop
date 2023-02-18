//
//  User.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct User: Content {
    let id: Int?
    let login: String?
    let password: String?
    let email: String?
    let gender: String?
    let creditCard: String?
    let name: String?
    let lastname: String?
}
