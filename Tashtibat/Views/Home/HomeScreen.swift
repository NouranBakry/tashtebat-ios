//
//  HomeScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//

//
//  HomeScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchQuery: String = ""
    @State private var products: [Product] = []
    @State private var vendors: [Vendor] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    // Home title section
                    ZStack() {
                        HStack(alignment: .bottom) {
                            Text("Home")
                                .font(Font.custom("Alexandria", size: 20))
                                .lineSpacing(28)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image("home notification")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .background(.white)
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                        
                        HStack(spacing: 8) {
                            Image("home location pin")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .background(.white)
                                .cornerRadius(8)
                            // TODO: Show Customer Address
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Deliver to")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.white)
                                Text("Smouha, Alexandria")
                                    .font(Font.custom("Alexandria", size: 11))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.white)
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .offset(y: 45) // Adjust position
                    }
                    .frame(height: 94)
                    .background(Color(red: 1, green: 0.60, blue: 0))
                    
                    // Search bar
                    HStack(spacing: 16) {
                        ZStack(alignment: .leading) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                            
                            TextField("What are you looking for?", text: $searchQuery)
                                .font(Font.custom("Alexandria", size: 13))
                                .padding(10)
                                .padding(.leading, 30)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                                .foregroundColor(.black)
                                .disableAutocorrection(true)
                        }
                        .frame(height: 40)
                    }
                    .padding(.horizontal)
                    
                    // Shop by category section
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("Shop By Category")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("View All")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        }
                        .padding(.horizontal)
                        
                        // Category icons (you can use a ForEach for these as well)
                        HStack(alignment: .top, spacing: 16) {
                            VStack(spacing: 8) {
                                Image("Electrical Icon")
                                    .resizable()
                                    .frame(width: 56, height: 56)
                                    .background(Color(red: 1, green: 0.96, blue: 0.90))
                                    .cornerRadius(100)
                                Text("Electrical")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.black)
                            }
                            VStack(spacing: 8) {
                                Image("Painting Icon")
                                    .resizable()
                                    .frame(width: 56, height: 56)
                                    .background(Color(red: 1, green: 0.96, blue: 0.90))
                                    .cornerRadius(100)
                                Text("Painting")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.black)
                            }
                            VStack(spacing: 8) {
                                Image("Plumbing Icon")
                                    .resizable()
                                    .frame(width: 56, height: 56)
                                    .background(Color(red: 1, green: 0.96, blue: 0.90))
                                    .cornerRadius(100)
                                Text("Plumbing")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.black)
                            }
                            VStack(spacing: 8) {
                                Image("Carpentary Icon")
                                    .resizable()
                                    .frame(width: 56, height: 56)
                                    .background(Color(red: 1, green: 0.96, blue: 0.90))
                                    .cornerRadius(100)
                                Text("Carpentary")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Spacer()
                    
                    // Popular products section (dynamic)
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("Popular Products")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("View All")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        }
                        .padding(.horizontal)
                        
                        // Scrollable list of products
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(products, id: \.id) { product in
                                    ProductCardView(product: product)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    // Our Vendors Section
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("Our Vendors")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("View All")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        }
                        .padding(.horizontal)
                        
                        // Scrollable list of Vendors
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(vendors, id: \.id) { vendor in
                                    VendorCardView(vendor: vendor)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .onAppear {
                ProductService.shared.fetchProducts { fetchedProducts in
                    self.products = fetchedProducts
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
