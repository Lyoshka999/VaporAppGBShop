//
//  Cart.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct Cart: Content {
    var productId: Int?
    var quantity: Int?
}
