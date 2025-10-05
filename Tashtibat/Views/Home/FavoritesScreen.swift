//
//  FavoritesScreen.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 05/10/2025.
//
import SwiftUI

struct FavoritesScreen: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    var body: some View {
        NavigationStack {
            if favoritesManager.favoriteProducts.isEmpty {
                Image("Heart")
                VStack(spacing: 12) {
                    Text("No favorites yet")
                        .font(AppTypography.Title())
                        .foregroundColor(.black)
                }
                .padding()
                VStack{
                    Text("Explore and Save your Picks.")
                        .font(AppTypography.BodyLight())
                        .foregroundColor(AppColor.grey900)
                }
            } else {
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(favoritesManager.favoriteProducts) { product in
                            NavigationLink(destination: ProductDetails(product: product)) {
                                ProductCardView(product: product)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Favorites")
            }
        }
    }
}

struct FavoritesScreen_previews: PreviewProvider{
    static var previews: some View{
        FavoritesScreen().environmentObject(FavoritesManager())
    }
}
