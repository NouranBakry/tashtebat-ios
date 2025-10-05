//
//  MainTabView.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 10/02/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationStack{
            TabView {
                // Home Tab
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                            .font(AppTypography.CaptionBold())

                    }
                
                CategoriesScreen()
                    .tabItem {
                        Label("Categories", systemImage: "square.grid.2x2.fill")
                            .font(AppTypography.CaptionBold())

                    }
                
                FavoritesScreen()
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                            .font(AppTypography.CaptionBold())
                    }
                
                Profile()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                            .font(AppTypography.CaptionBold())
                    }
            }
            .accentColor(AppColor.primary500) // Change active tab color
        }
    }
}
