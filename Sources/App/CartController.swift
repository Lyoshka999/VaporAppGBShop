//
//  CartController.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

class CartController {
    func getCart(_ req: Request) throws -> EventLoopFuture<CatalogResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = CartResponse(
            amount: 50000,
            count: 2,
            contents: [
                CartContents(productId: 300, productName: "LG TV 49", productPrice: 59000, quantity: 1),
                CartContents(productId: 301, productName: "LG TV 43", productPrice: 49000, quantity: 1)
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func payCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товары оплачены",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func addToCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Cart.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар добавлен в корзину",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func deleteFromCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Cart.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар удален из корзины",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
