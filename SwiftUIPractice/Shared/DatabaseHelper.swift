//
//  DatabaseHelper.swift
//  SwiftUIPractice
//
//  Created by Agung Nawawi on 07/08/24.
//

import Foundation

struct DatabaseHelper {
    
    func getProducts() async throws -> [Product] {
        
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        
        let (data, _) =  try await URLSession.shared.data(from: url)
        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        return products.products
    }
}

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
