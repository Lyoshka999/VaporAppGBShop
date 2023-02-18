//
//  ItemsController.swift
//  
//
//  Created by Алексей on 18.02.2023.
//

import Vapor

class ItemsController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogResponse]> {
        guard let body = try? req.content.decode(Catalog.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
            CatalogResponse(productId: 300, productName: "LG TV 49", price: 59000, shortDescription: "ТВ для гостинной", picUrl: "https://kast18.ru/wp-content/uploads/productimg/1540223.jpg"),
            CatalogResponse(productId: 301, productName: "LG TV 43", price: 49000, shortDescription: "ТВ для спальни", picUrl: "https://cdn.kns.ru/linkpics/lg-43lh513v-0.jpg"),
            CatalogResponse(productId: 302, productName: "Мышка беспроводная", price: 5000, shortDescription: "Игровая мышь", picUrl: "https://matrix43.ru/image/cache/catalog/products/mishki_ustroystva_vvoda_22/p179282_35674495_mish_trust_gaming_wireless_mouse_gxt_130_ranoo_u13-600x600.jpg"),
            CatalogResponse(productId: 303, productName: "Настольные колонки", price: 2500, shortDescription: "Для отличного прослушивания музыки с ПК", picUrl: "https://doctorhead.ru/upload/resize_cache/iblock/ec6/676_560_1/RuarkAudio_MR1_Mk2_RichWalnut_10.jpg")
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getCongratulations(_ req: Request) throws -> EventLoopFuture<CongratulationsResponse> {
        guard let body = try? req.content.decode(Congratulations.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        var response = CongratulationsResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        
        switch body.productId {
        case 123: response = CongratulationsResponse(result: 1, productId: 300, productName: "LG TV 49", price: 59000, description: "В для гостинной", picUrl: "https://kast18.ru/wp-content/uploads/productimg/1540223.jpg")
        case 124: response = CongratulationsResponse(result: 1, productId: 301, productName: "LG TV 43", price: 49000, description: "ТВ для спальни", picUrl: "https://cdn.kns.ru/linkpics/lg-43lh513v-0.jpg")
        case 125: response = CongratulationsResponse(result: 1, productId: 302, productName: "Мышка беспроводная", price: 5000, description: "Игровая мышь", picUrl: "https://matrix43.ru/image/cache/catalog/products/mishki_ustroystva_vvoda_22/p179282_35674495_mish_trust_gaming_wireless_mouse_gxt_130_ranoo_u13-600x600.jpg")
        case 126: response = CongratulationsResponse(result: 1, productId: 303, productName: "Настольные колонки", price: 2500, description: "Для отличного прослушивания музыки с ПК", picUrl: "https://doctorhead.ru/upload/resize_cache/iblock/ec6/676_560_1/RuarkAudio_MR1_Mk2_RichWalnut_10.jpg")
        default: response = CongratulationsResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар.", picUrl: nil)
        }
        
        return req.eventLoop.future(response)
    }
}

