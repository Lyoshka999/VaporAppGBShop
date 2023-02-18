//
//  Catalog.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

struct Catalog: Content {
    var pageNumber: Int?
    var categoryId: Int?
}
