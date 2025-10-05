//
//  CartButton.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 05/10/2025.
//

import SwiftUI

struct CartButton: View {
    @Binding var showCart: Bool
        var itemCount: Int = 0

        var body: some View {
            Button(action: {
                showCart = true
            }) {
                ZStack {
                    Circle()
                        .fill(AppColor.primary100)
                        .frame(width: 64, height: 64)
                        .shadow(radius: 4)

                    Image(systemName: "cart.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .bold))
                }
            }
            .padding(.leading, 20)
            .overlay(alignment: .topTrailing) {
                if itemCount > 0 {
                    Text("\(itemCount)")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x: 6, y: -6)
                }
            }
        }
}
