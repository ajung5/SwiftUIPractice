//
//  Product.swift
//  SwiftUIPractice
//
//  Created by Agung Nawawi on 07/08/24.
//

import Foundation


// MARK: Product Array
struct ProductArray: Codable {
    let products: [Product]
    let total, skip, linit: Int
}

struct Product: Codable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}
