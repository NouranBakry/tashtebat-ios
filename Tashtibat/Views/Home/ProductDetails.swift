//
//  ProductDetails.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct ProductDetails: View {
    let product: Product
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.dismiss) private var dismiss
    
    @State private var selectedImageIndex = 0
    @State private var isFavorite = false
    @State private var showCart = false
    @State private var quantity = 1

    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 24) {
                    // --- Header: Product details + Share button
                    HStack {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .font(.system(size: 20, weight: .medium))
                                .padding()
                        }
                        Text("Product Details")
                            .font(.custom("Alexandria", size: 20))
                            .foregroundColor(.black)
                        Spacer()
                        Button(action: shareProduct) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal)

                    // --- Main product image with favorite button
                    ZStack(alignment: .topTrailing) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .frame(height: 340)
                            .shadow(color: .gray.opacity(0.1), radius: 4)

                        if let imageURL = product.images[safe: selectedImageIndex]?.url,
                           let url = URL(string: imageURL) {
                            AsyncImage(url: url) { image in
                                image
                                    .cornerRadius(12)
                                    .padding()
                            } placeholder: {
                                ProgressView()
                            }
                        }

                        Button(action: { favoritesManager.toggleFavorite(product)}) {
                            Image(systemName: favoritesManager.isFavorite(product) ? "heart.fill" : "heart")
                                .font(.system(size: 22))
                                .foregroundColor(favoritesManager.isFavorite(product) ? .red : .gray)
                                .padding()
                        }
                    }
                    .padding(.horizontal)

                    // --- Thumbnails
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(product.images.indices, id: \.self) { i in
                                if let url = URL(string: product.images[i].url!) {
                                    AsyncImage(url: url) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 74, height: 74)
                                            .cornerRadius(12)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 12)
                                                    .stroke(i == selectedImageIndex ? Color.orange : Color.gray.opacity(0.3), lineWidth: 1)
                                            )
                                    } placeholder: {
                                        Color.gray.opacity(0.1)
                                            .frame(width: 74, height: 74)
                                            .cornerRadius(12)
                                    }
                                    .onTapGesture { selectedImageIndex = i }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                    // --- Product Title
                    Text(product.title ?? "Product name")
                        .font(.custom("Alexandria", size: 16))
                        .foregroundColor(.black)
                        .padding(.horizontal)

                    // --- Stock Status
                    HStack {
                        Text(product.status == "in_stock" ? "In Stock" : "Out of Stock")
                            .font(.custom("Alexandria", size: 13))
                            .foregroundColor(product.status == "in_stock" ? .green : .red)
                            .padding(8)
                            .background(product.status == "in_stock" ? Color.green.opacity(0.1) : Color.red.opacity(0.1))
                            .cornerRadius(8)
                        Spacer()
                    }
                    .padding(.horizontal)

                     //--- Vendor Info
                    HStack(spacing: 12) {
                        VStack(alignment: .leading) {
                            Text("Sold by:")
                                .font(.custom("Alexandria", size: 13))
                                .foregroundColor(.black)
//                            Text(product.vendor ?? "Unknown Vendor")
//                                .font(.custom("Alexandria", size: 13).weight(.bold))
//                                .foregroundColor(.orange)
                     }
                        Spacer()
                        Image("ghareeb vendor")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 0.5)
                            )
                    }
                    .padding()
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(8)
                    .padding(.horizontal)

                    // --- Description
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Description")
                            .font(.custom("Alexandria", size: 14).weight(.bold))
                        Text(product.description ?? "No description available.")
                            .font(.custom("Alexandria", size: 12))
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)

                    // --- Specifications section
//                    VStack(alignment: .leading, spacing: 6) {
//                        Text("Specifications")
//                            .font(.custom("Alexandria", size: 14).weight(.bold))
//                            .foregroundColor(.orange)
//                        VStack(alignment: .leading, spacing: 6) {
//                            ForEach(product.specs ?? [], id: \.key) { spec in
//                                HStack {
//                                    Text(spec.key)
//                                        .font(.custom("Alexandria", size: 12))
//                                    Spacer()
//                                    Text(spec.value)
//                                        .font(.custom("Alexandria", size: 12))
//                                        .foregroundColor(.gray)
//                                }
//                                Divider()
//                            }
//                        }
//                        .padding(12)
//                        .background(Color.white)
//                        .cornerRadius(8)
//                        .shadow(color: .gray.opacity(0.05), radius: 3)
//                    }
//                    .padding(.horizontal)

                    // --- Info Badges
                    HStack(spacing: 16) {
                        InfoBadge(icon: "creditcard", title: "Cash on Delivery", subtitle: "Payment")
                        Divider().frame(height: 50)
                        InfoBadge(icon: "arrow.uturn.left", title: "Return for Free", subtitle: "Within 14 days")
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .padding(.horizontal)

                    // --- Price and Quantity
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(product.price ?? 0, specifier: "%.2f") EGP")
                                .font(.custom("Alexandria", size: 20).weight(.bold))
                                .foregroundColor(.orange)
                            Text("Includes VAT")
                                .font(.custom("Alexandria", size: 11))
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        HStack {
                            Button(action: { if quantity > 1 { quantity -= 1 } }) {
                                Image(systemName: "minus")
                            }
                            Text("\(quantity)")
                                .frame(width: 30)
                            Button(action: { quantity += 1 }) {
                                Image(systemName: "plus")
                            }
                        }
                        .padding(8)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    }
                    .padding(.horizontal)

                    // --- Buttons
                    HStack(spacing: 8) {
                        Button(action: { /* Buy Now Action */ }) {
                            Text("Buy Now")
                                .font(.custom("Alexandria", size: 16))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.orange)
                                .cornerRadius(12)
                        }

                        Button(action: { /* Add to Cart */ }) {
                            Text("Add to Cart")
                                .font(.custom("Alexandria", size: 16))
                                .foregroundColor(.orange)
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 90)
                }
                .padding(.top)
            }

            // --- Floating Cart Button
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    CartButton(showCart: $showCart, itemCount: 0)
                        .padding(.trailing, 24)
                        .padding(.bottom, 100)
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $showCart) {
            CartScreen()
        }
    }
    

    // Share Function
    func shareProduct() {
        guard let url = URL(string: "https://tashtibateg.com/product/\(product.id)") else { return }
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        UIApplication.shared.connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
            .first?
            .rootViewController?
            .present(activityVC, animated: true)
    }
}

// --- Supporting small views
struct InfoBadge: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(.orange)
            Text(title)
                .font(.custom("Alexandria", size: 11))
                .foregroundColor(.black)
            Text(subtitle)
                .font(.custom("Alexandria", size: 11).weight(.light))
                .foregroundColor(.gray)
        }
    }
}

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails(product: Product( id: "1", title: "Bticino Matix Edge Schuko Socket", status: "published", images: [ ProductImage( id: "1", url: "https://example.com/image.png", rank: 1 ) ], description: "Sockets are primarily used to provide a safe and convenient means of connecting electrical devices to a power supply.", price: 23.50)).environmentObject(FavoritesManager())
    }
}
