//
//  CatalogResponse.swift
//  
//
//  Created by Алексей on 18.02.2023.
//
import Vapor

struct CatalogResponse: Content {
    let productId: Int?
    let productName: String?
    let price: Int?
    let shortDescription: String?
    let picUrl: String?
}
