//
//  FavoritesManager.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 05/10/2025.
//


import SwiftUI

class FavoritesManager: ObservableObject {
    @Published var favoriteProducts: [Product] = [] {
        didSet { saveFavorites() }
    }
    
    init() {
        loadFavorites()
    }
    
    func toggleFavorite(_ product: Product) {
        if isFavorite(product) {
            favoriteProducts.removeAll { $0.id == product.id }
        } else {
            favoriteProducts.append(product)
        }
    }
    
    private func saveFavorites() {
        if let encoded = try? JSONEncoder().encode(favoriteProducts) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }
    
    private func loadFavorites() {
        if let data = UserDefaults.standard.data(forKey: "favorites"),
           let decoded = try? JSONDecoder().decode([Product].self, from: data) {
            favoriteProducts = decoded
        }
    }
    
    func isFavorite(_ product: Product) -> Bool {
        favoriteProducts.contains { $0.id == product.id }
    }
}
