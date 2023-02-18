//
//  CongratulationsResponse.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct CongratulationsResponse: Content {
    let result: Int?
    let productId: Int?
    let productName: String?
    let price: Int?
    let description: String?
    let picUrl: String?
}
