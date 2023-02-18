//
//  CartResponse.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct CartResponse: Content {
    var amount: Int?
    var count: Int?
    var contents: [CartContents]
}

struct CartContents: Content {
    var productId: Int?
    var productName: String?
    var productPrice: Int?
    var quantity: Int?
}
