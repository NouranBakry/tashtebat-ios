//
//  VendorService.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 28/08/2025.
//

import Foundation

struct VendorsResponse: Codable{
    let vendors: [Vendor]
}

class VendorService{
    static let shared = VendorService()
    
    private let baseURL = "https://tashtibat-admin.xyz"
    
    func fetchVendors(completion: @escaping ([Vendor]) -> Void){
        guard let url = URL(string: "\(baseURL)/vendor") else {
            print("Invalid URL")
            return
        }
        var email = "vendor@medusajs.com"
        var password = "supersecret"
        AuthenticationService.shared.getToken(email: email, password: password) { token, error in
            guard let token = token else {
                completion([])
                return
            }
            UserDefaults.standard.set(token, forKey: "vendorToken")
            
            var request = URLRequest(url: url)
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")  // Use the token here
            URLSession.shared.dataTask(with: request){ data, _, error in
                if let error = error {
                    print("Request error: ", error)
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
                    let response = try JSONDecoder().decode(VendorsResponse.self, from: data)
                    print(response)
                    DispatchQueue.main.async {
                        print("Successfully decoded products: ", response.vendors)
                        completion(response.vendors)
                    }
                } catch{
                    print("Decoding error:", error)
                    DispatchQueue.main.async {
                        completion([])
                    }
                }
            }.resume()
        }
    }
}
