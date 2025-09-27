//
//  VendorCardView.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 28/08/2025.
//

import SwiftUI

struct VendorCardView: View {
    
    let vendor : Vendor
    
    var body: some View {
        NavigationLink(destination: Text(vendor.name ?? "Vendor Name")) {
            VStack(alignment: .leading, spacing: 8) {
                // Product Image
                // Note: You will need to implement a way to load images from the Medusa API
                // For now, this is a placeholder.
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 128, height: 122)
                    .cornerRadius(12)
                
                // Product Title
                Text(vendor.name ?? "Unknown Vendor")
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

struct VendorCardView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a mock vendor for the preview
        VendorCardView(vendor: Vendor(id: "1", name: "El Swedy"))
    }
}
