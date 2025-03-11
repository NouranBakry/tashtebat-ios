//
//  AuthenticationService.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//
import Foundation

struct JWTRegisterRequest: Codable {
    let email: String
    let password: String
}

struct TokenRegisterResponse: Codable {
    let token: String?
    let message: String?
}

struct CustomerRequest: Codable {
    let email: String
    let phone: String
    let first_name: String
    let password: String
}

struct CustomerResponse: Codable {
    let id: String?
    let email: String?
    let message: String?
}

struct User: Codable {
    let id: String
    let email: String
    let first_name: String?
    let last_name: String?
}

class AuthenticationService {
    static let shared = AuthenticationService() //singleton instance
    private let baseURL = "http://192.168.1.30:9000"  // 192.168.1.3 is my IP because running on iphone, we use 127.0.0.1 is running a simulator
    
    private init() {}
    
    //TODO: Login API Call
    
    func login(email: String, password: String, completion: @escaping (Bool, String?) -> Void) {
        let url = URL(string: "\(baseURL)/auth/customer/emailpass")! // Medusa store auth endpoint
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body)

        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(false, "Network error: \(error.localizedDescription)")
                    return
                }

                guard let httpResponse = response as? HTTPURLResponse, let data = data else {
                    completion(false, "Invalid response from server")
                    return
                }

                if httpResponse.statusCode == 200 {
                    // Parse response and save token if available
                    if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                       let token = json["token"] as? String {
                        UserDefaults.standard.set(token, forKey: "authToken")
                        completion(true, nil)
                    } else {
                        completion(false, "Invalid login response")
                    }
                } else {
                    let errorMessage = (try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any])?["message"] as? String ?? "Login failed"
                    completion(false, errorMessage)
                }
            }
        }.resume()
    }
    
    // TODO: remove token on logoug UserDefaults.standard.removeObject(forKey: "authToken")
    // TODO: Implement Log out
    
    func signUp(email: String, password: String, phoneNumber: String, name: String, completion: @escaping (Bool, String?) -> Void){
        // Check if we already have a token
        if let token = UserDefaults.standard.string(forKey: "authToken") {
            print("🔹 Using existing token for registration.")
            self.register(email: email, phoneNumber: phoneNumber, password: password, name: name, token: token, completion: completion)
        } else {
            print("🔹 No token found, requesting a new one.")
            self.getToken(email: email, password: password) { token, error in
                guard let token = token else {
                    completion(false, error ?? "Failed to get token.")
                    return
                }

                // Store the token for future requests
                UserDefaults.standard.set(token, forKey: "authToken")

                // Now register the user
                self.register(email: email, phoneNumber: phoneNumber, password: password, name: name, token: token, completion: completion)
            }
        }
    }
    
    private func getToken(email: String, password: String, completion: @escaping (String?, String?) -> Void) {
        let registerUrl = URL(string: "\(baseURL)/auth/customer/emailpass/register")!  // Replace with actual URL
        
        var request = URLRequest(url: registerUrl)
        request.httpMethod = "POST"
        request.setValue("include", forHTTPHeaderField: "credentials")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = [
            "email": email,
            "password": password
        ]
        
        request.httpBody = try? JSONSerialization.data(withJSONObject: body)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(nil, "❌ Error: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                completion(nil, "❌ No data received.")
                return
            }

            do {
                if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                   let token = json["token"] as? String {
                    // ✅ Store the token in UserDefaults
                    UserDefaults.standard.set(token, forKey: "authToken")
                    print("✅ Token received: \(token)")
                    completion(token, nil)
                } else {
                    completion(nil, "❌ Token missing in response")
                }
            } catch {
                completion(nil, "❌ JSON Parsing error: \(error)")
            }
        }.resume()
    }
    // Register API Call
    private func register(email: String, phoneNumber: String, password: String, name: String, token: String, completion: @escaping (Bool, String?) -> Void){
        guard let token = UserDefaults.standard.string(forKey: "authToken") else {
            print("❌ No token found, registration failed.")
            return
        }
        guard let url = URL(string: "\(baseURL)/store/customers") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("include", forHTTPHeaderField: "credentials")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")  // Use the token here
        print("TOKEN retrieved is \(token)")
        request.setValue("pk_50c8e455d749fd2d18b39dedfd3b7300c0e0d430831a92429d4e337e0119db86", forHTTPHeaderField: "x-publishable-api-key")  // Add API key
        
        let body: [String: Any] = [
            "email": email,
            "phone": phoneNumber,
            "first_name": name
        ]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(false, "❌ Error: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                completion(false, "❌ No data received.")
                return
            }

            print("✅ Customer registration successful!")
            completion(true, nil)
        }.resume()
    }
}
