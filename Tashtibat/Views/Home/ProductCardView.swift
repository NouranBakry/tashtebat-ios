//
//  SearchScreen.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Product Image
            if let imageURL = product.images.first?.url,
               let url = URL(string: imageURL) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 120, height: 120)
                .cornerRadius(12)
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            }
            
            // Product Title
            Text(product.title ?? "Unknown Product")
                .font(Font.custom("Alexandria", size: 11).weight(.light))
                .lineLimit(2)
                .foregroundColor(Color(red: 0.27, green: 0.28, blue: 0.29))
        }
        .frame(width: 128)
        .padding(8)
        .background(.white)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
        )
        
        .buttonStyle(PlainButtonStyle())
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(
            product: Product(
                id: "1",
                title: "Bitcino Matix Edge Schuko Socket",
                status: "published",
                images: [
                    ProductImage(
                        id: "1",
                        url: "https://example.com/sample-image.png",
                        rank: 1
                    )
                ],
                description: "A simple placeholder product for previewing the card view.",
                price: 23.3
            )
        )
    }
}
