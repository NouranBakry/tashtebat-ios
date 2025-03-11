//
//  HomeScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchQuery: String = ""
    
    var body: some View {
        // Wrap your content in a ScrollView for vertical scrolling
        NavigationView{
            ScrollView {
                ZStack() {
                    // home title
                    HStack(alignment: .bottom, spacing: 229) {
                        HStack(spacing: 16) {
                            Text("Home")
                                .font(Font.custom("Alexandria", size: 20))
                                .lineSpacing(28)
                                .foregroundColor(.white)
                        }
                    }
                    .offset(x: -141, y: -25)
                    ZStack() {
                        Image("home notification")
                    }
                    .frame(width: 40, height: 40)
                    .background(.white)
                    .cornerRadius(8)
                    .offset(x: 151.50, y: -19)
                    
                    // location
                    HStack(spacing: 8) {
                        HStack(alignment: .top, spacing: 8) {
                            ZStack() {
                                ZStack() {
                                    Image("home location pin")
                                }
                                .frame(width: 24, height: 24)
                                .offset(x: 0, y: 0)
                            }
                            .frame(width: 32, height: 32)
                            .background(.white)
                            .cornerRadius(8)
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
                        }
                    }
                    .frame(width: 343)
                    .offset(x: 0, y: 22)
                }
                .frame(width: 375, height: 94)
                .background(Color(red: 1, green: 0.60, blue: 0));
                
                // search bar
                HStack (spacing: 16) {
                    ZStack (alignment: .leading){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                        
                        TextField("What are you looking for?", text: $searchQuery, prompt: Text("What are you looking for?")         .font(Font.custom("Alexandria", size: 13))
                            .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))) // Bind the search query
                        .padding(10)
                        .padding(.leading, 30) // Adds space for the icon to not overlap with text
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                        .foregroundColor(.black)
                        .disableAutocorrection(true)
                    }
                    .frame(height: 40) // Set the height of the field to match the icon
                    .padding(.horizontal) // Padding around the text field
                }
                
                // Shop by category section
                VStack(alignment: .leading, spacing: 16) {
                    ZStack() {
                        Text("Shop By Category")
                            .font(Font.custom("Alexandria", size: 13))
                            .lineSpacing(18.20)
                            .foregroundColor(.black)
                            .offset(x: -113.33, y: 0)
                        HStack(spacing: 5) {
                            Text("View All")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                            ZStack() {
                                
                            }
                            .frame(width: 16, height: 16)
                        }
                        .frame(width: 74.22, height: 18)
                        .offset(x: 134.39, y: -0)
                    }
                    .frame(width: 343, height: 18)
                    HStack(alignment: .top, spacing: 16) {
                        VStack(spacing: 8) {
                            ZStack() {
                                ZStack() {
                                    Group {
                                        ZStack() {
                                            Image("Electrical Icon")
                                        }
                                        .frame(width: 37.95, height: 36.54)
                                        .offset(x: 2.46, y: 9.73)
                                    }
                                }
                                .frame(width: 56, height: 56)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 56, height: 56)
                            .background(Color(red: 1, green: 0.96, blue: 0.90))
                            .cornerRadius(100)
                            Text("Electrical")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(.black)
                        }
                        VStack(spacing: 8) {
                            ZStack() {
                                ZStack() {
                                    ZStack() {
                                        ZStack() {
                                            Image("Painting Icon")
                                        }
                                        .frame(width: 52.59, height: 52.50)
                                        .offset(x: 0, y: 0)
                                    }
                                    .frame(width: 52.59, height: 52.50)
                                    .offset(x: 0.04, y: -0)
                                }
                                .frame(width: 56, height: 56)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 56, height: 56)
                            .background(Color(red: 1, green: 0.96, blue: 0.90))
                            .cornerRadius(100)
                            Text("Painting")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(.black)
                        }
                        VStack(spacing: 8) {
                            ZStack() {
                                ZStack() {
                                    ZStack() {
                                        ZStack() {
                                            Image("Plumbing Icon")
                                        }
                                        .frame(width: 52.49, height: 52.51)
                                        .offset(x: 0, y: 0)
                                    }
                                    .frame(width: 52.49, height: 52.51)
                                    .offset(x: 0, y: -0)
                                }
                                .frame(width: 56, height: 56)
                                .offset(x: 56.50, y: 0)
                                .rotationEffect(.degrees(-180))
                            }
                            .frame(width: 56, height: 56)
                            .background(Color(red: 1, green: 0.96, blue: 0.90))
                            .cornerRadius(100)
                            Text("Plumbing")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(.black)
                        }
                        VStack(spacing: 8) {
                            ZStack() {
                                ZStack() {
                                    ZStack() {
                                        Image("Carpentary Icon")
                                    }
                                    .frame(width: 22.20, height: 22.29)
                                    .offset(x: 15, y: 16.85)
                                }
                                .frame(width: 56, height: 56)
                                .offset(x: 0.50, y: 0)
                            }
                            .frame(width: 56, height: 56)
                            .background(Color(red: 1, green: 0.96, blue: 0.90))
                            .cornerRadius(100)
                            Text("Carpentary")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(.black)
                        }
                    }
                    .frame(width: 343)
                }
                .frame(width: 343, height: 113);
                
                Spacer()
                
                // Popular products section
                ZStack() {
                    Text("Popular Products")
                        .font(Font.custom("Alexandria", size: 13))
                        .lineSpacing(18.20)
                        .foregroundColor(.black)
                        .offset(x: -114.83, y: 0)
                    HStack(spacing: 5) {
                        // TODO navigate or animation
                        Text("View All")
                            .font(Font.custom("Alexandria", size: 13))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        ZStack() {
                            
                        }
                        .frame(width: 16, height: 16)
                    }
                    .frame(width: 74.22, height: 18)
                    .offset(x: 134.39, y: -0)
                }
                .frame(width: 343, height: 18);
                
                // Test product example bitcino matix
                // TODO: this needs to be dynamic, retrieve popular products from API
                NavigationLink(destination: ProductDetails()){
                    ZStack() {
                        Text("Bitcino Matix Edge Schuko Socket, 1 Module, 16 A,")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(Color(red: 0.27, green: 0.28, blue: 0.29))
                            .offset(x: 0, y: 26.50)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 80, height: 80)
                                .background(Image("Bitcino product 1"))
                                .offset(x: 0, y: 0)
                            HStack(spacing: 8) {
                                Text("22%")
                                    .font(Font.custom("Alexandria", size: 11).weight(.medium))
                                    .lineSpacing(15.40)
                                    .foregroundColor(Color(red: 0.86, green: 0.21, blue: 0.27))
                            }
                            .padding(4)
                            .background(Color(red: 0.99, green: 0.92, blue: 0.93))
                            .cornerRadius(8)
                            .offset(x: -40, y: -41.50)
                            ZStack() {
                                
                            }
                            .frame(width: 24, height: 24)
                            .offset(x: 44, y: -41)
                        }
                        .frame(width: 128, height: 122)
                        .background(.white)
                        .cornerRadius(12)
                        .offset(x: 0, y: -64)
                        HStack(spacing: 4) {
                            ZStack() {
                                
                            }
                            .frame(width: 16, height: 16)
                            Text("4.3 (119)")
                                .font(Font.custom("Alexandria", size: 11).weight(.bold))
                                .lineSpacing(15.40)
                                .foregroundColor(Color(red: 0.16, green: 0.65, blue: 0.27))
                        }
                        .frame(height: 20)
                        .cornerRadius(20)
                        .offset(x: -25.50, y: 66)
                        HStack(alignment: .top, spacing: 4) {
                            Text("50.50")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .strikethrough()
                                .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                        }
                        .offset(x: -40, y: 91.50)
                        HStack(spacing: 4) {
                            Text("23.50")
                                .font(Font.custom("Alexandria", size: 13).weight(.bold))
                                .lineSpacing(18.20)
                                .foregroundColor(.black)
                            Text("EGP")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(.black)
                        }
                        .offset(x: -24, y: 108)
                    }
                    .frame(width: 128, height: 250)
                    .background(.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                    );
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
