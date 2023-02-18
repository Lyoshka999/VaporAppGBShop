//
//  ReviewResponse.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct ReviewResponse: Content {
    let userId: Int?
    let reviewText: String?
}
