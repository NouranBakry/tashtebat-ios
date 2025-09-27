//
//  ProductService.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 21/08/2025.
//
import Foundation

// TODO: check medusa store/products vs /products do I need an api key or jwt token or sth
// TODO: check product model, variants, etc.. same for vendors and categories

// This struct represents the overall API response from Medusa.
struct Product: Codable {
    let id: String?
    let title: String?
    let status: String?
    let description: String?
}

struct ProductResponse: Codable {
    let limit: Int?
    let offset: Int?
    let count: Int?
    let products: [Product]
}



class ProductService {
    static let shared = ProductService() //singleton instance
    private let baseURL = "https://tashtibat-admin.xyz"
//    private let publishableApiKey = "pk_900dca0d992b8192b2c44174bea3caef570d83a1c0de85eb51825fcbc5129748" // static created in admin dashboard

        // list products api call
        func fetchProducts(completion: @escaping ([Product]) -> Void) {
            guard let url = URL(string: "\(baseURL)/store/products") else {
                print("Invalid URL")
                return
            }
            
            var request = URLRequest(url: url)
            request.setValue( "pk_900dca0d992b8192b2c44174bea3caef570d83a1c0de85eb51825fcbc5129748" , forHTTPHeaderField: "x-publishable-api-key")
            
            URLSession.shared.dataTask(with: request) { data, _, error in
                if let error = error {
                    print("Request error:", error)
                    return
                }
                
                guard let data = data else {
                    print("No data received")
                    return
                }
                
                if let jsonString = String(data: data, encoding: .utf8) {
                    print("Received JSON String:", jsonString)
                }
                
                do {
                   
                    let response = try JSONDecoder().decode(ProductResponse.self, from: data)
                    print(response)
                    DispatchQueue.main.async {
                        print("Successfully decoded products: ", response.products)
                        completion(response.products)
                    }
                } catch {
                    print("Decoding error:", error)
                    DispatchQueue.main.async {
                        completion([])
                    }
                }
            }.resume()
        }
}
