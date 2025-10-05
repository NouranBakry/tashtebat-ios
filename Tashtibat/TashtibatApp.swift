//
//  TashtebatApp.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 20/12/2024.
//

import SwiftUI

@main
struct TashtibatApp: App {

    @StateObject private var favoritesManager = FavoritesManager()
    @StateObject private var userManager = UserManager.shared

    var body: some Scene {
        WindowGroup{
            RootView().environmentObject(favoritesManager)
                .environmentObject(userManager)
        }
    }
}
