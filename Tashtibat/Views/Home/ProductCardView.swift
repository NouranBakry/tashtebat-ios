//
//  ProductCardView.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 21/08/2025.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product

    var body: some View {
        NavigationLink(destination: Text(product.title ?? "Product Details")) {
            VStack(alignment: .leading, spacing: 8) {
                // Product Image
                // Note: You will need to implement a way to load images from the Medusa API
                // For now, this is a placeholder.
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 128, height: 122)
                    .cornerRadius(12)
                
                // Product Title
                Text(product.title ?? "Unknown Product")
                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                    .lineLimit(2)
                    .foregroundColor(Color(red: 0.27, green: 0.28, blue: 0.29))
                
                // Add price, etc. here once available in the Product model.
            }
            .frame(width: 128)
            .padding(8)
            .background(.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
            )
        }
        .buttonStyle(PlainButtonStyle()) // To remove the default blue link color
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a mock product for the preview
        ProductCardView(product: Product(id: "1", title: "Bitcino Matix Edge Schuko Socket", status: "published", description: "A simple placeholder product for previewing the card view."))
    }
}
