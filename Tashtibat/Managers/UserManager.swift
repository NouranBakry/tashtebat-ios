//
//  UserManager.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 06/10/2025.
//

import SwiftUI
import Combine

class UserManager: ObservableObject {
    @Published var currentUser: User? = nil

    static let shared = UserManager() // optional singleton
    
    private init() {
        loadUser()
    }

    // 🔹 Preview-friendly initializer
    init(previewUser: User) {
        self.currentUser = previewUser
    }
    
    // Example: Load user from local storage
    func loadUser() {
        if let data = UserDefaults.standard.data(forKey: "currentUser"),
           let user = try? JSONDecoder().decode(User.self, from: data) {
            self.currentUser = user
        }
    }

    // Save user when logging in
    func saveUser(_ user: User) {
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(encoded, forKey: "currentUser")
        }
        self.currentUser = user
    }

    // Clear user on logout
    func logout() {
        UserDefaults.standard.removeObject(forKey: "currentUser")
        currentUser = nil
    }
}
