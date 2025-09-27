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
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                //            NavigationStack {
                //                CategoriesView()
                //            }
                //            .tabItem {
                //                Image(systemName: "square.grid.2x2.fill")
                //                Text("Categories")
                //            }
                
                //            NavigationStack {
                //                FavoritesView()
                //            }
                //            .tabItem {
                //                Image(systemName: "heart.fill")
                //                Text("Favorites")
                //            }
                
                Profile()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
            }
            .accentColor(.blue) // Change active tab color
        }
    }
}
