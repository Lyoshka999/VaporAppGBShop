//
//  Review.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct Review: Content {
    var productId: Int?
    var userId: Int?
    var reviewText: String?
    var reviewId: Int?
}
