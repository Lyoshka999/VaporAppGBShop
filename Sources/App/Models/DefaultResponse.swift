//
//  DefaultResponse.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct DefaultResponse: Content {
    var result: Int
    var successMessage: String?
    var errorMessage: String?
}
