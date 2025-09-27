//
//  ProductDetails.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 10/03/2025.
//

import SwiftUI

struct ProductDetails: View {
    var body: some View {
        NavigationView {
            ScrollView{
                ZStack {
                    VStack( spacing: 24) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Product details")
                                .font(Font.custom("Alexandria", size: 20))
                                .lineSpacing(28)
                                .foregroundColor(.black)
                            
                            ZStack() {
                                Image("Bitcino product 1").resizable()
                            }
                            .frame(width: 343, height: 343)
                            
                            HStack(alignment: .top, spacing: 16) {
                                ZStack() {
                                    Image("bitcino view 1").resizable()
                                }
                                .frame(width: 74, height: 79)
                                .background(.white)
                                
                                ZStack() {
                                    Image("bitcino view 2").resizable()
                                }
                                .frame(width: 74, height: 80)
                                .background(.white)
                                
                                ZStack() {
                                    Rectangle()
                                    Image("bitcino view 3").resizable()
                                }
                                .frame(width: 73, height: 75)
                                .background(.white)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                                )
                            }
                        }
                        Text("Bticino Matix Edge Schuko Socket, 1 Module, 16 A, Different Colors")
                            .font(Font.custom("Alexandria", size: 16))
                            .lineSpacing(22.40)
                            .foregroundColor(.black)
                        HStack(spacing: 8) {
                            Text("In Stock")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 0.16, green: 0.65, blue: 0.27))
                        }
                        .padding(8)
                        .background(Color(red: 0.92, green: 0.96, blue: 0.93))
                        .cornerRadius(8)
                        
                        //                    VStack(alignment: .leading, spacing: 8) {
                        //                        Text("Color : Light Grey")
                        //                            .font(Font.custom("Alexandria", size: 13))
                        //                            .lineSpacing(18.20)
                        //                            .foregroundColor(.black)
                        //                        HStack(alignment: .top, spacing: 8) {
                        //                            HStack(alignment: .top, spacing: 8) {
                        //                                Ellipse()
                        //                                    .foregroundColor(.clear)
                        //                                    .frame(width: 34, height: 34)
                        //                                    .background(Color(red: 0.86, green: 0.82, blue: 0.76))
                        //                            }
                        //                            .padding(4)
                        //                            .overlay(
                        //                                RoundedRectangle(cornerRadius: 50)
                        //                                    .inset(by: 1)
                        //                                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                        //                            )
                        //                            HStack(alignment: .top, spacing: 8) {
                        //                                Ellipse()
                        //                                    .foregroundColor(.clear)
                        //                                    .frame(width: 34, height: 34)
                        //                                    .background(Color(red: 1, green: 0.29, blue: 0))
                        //                            }
                        //                            .padding(4)
                        //                            .cornerRadius(50)
                        //                            HStack(alignment: .top, spacing: 8) {
                        //                                Ellipse()
                        //                                    .foregroundColor(.clear)
                        //                                    .frame(width: 34, height: 34)
                        //                                    .background(Color(red: 0.96, green: 0.85, blue: 0.02))
                        //                            }
                        //                            .padding(4)
                        //                            .cornerRadius(50)
                        //                        }
                        //                    }
                        
                        HStack(spacing: 8) {
                            HStack(alignment: .top, spacing: 8) {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Sold by :")
                                        .font(Font.custom("Alexandria", size: 11).weight(.light))
                                        .lineSpacing(15.40)
                                        .foregroundColor(.black)
                                    HStack(spacing: 4) {
                                        Text("4.3 (119)")
                                            .font(Font.custom("Alexandria", size: 11).weight(.bold))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.16, green: 0.65, blue: 0.27))
                                    }
                                    .frame(height: 20)
                                    .cornerRadius(20)
                                }
                            }
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 25, height: 33)
                                    .background(Image("ghareeb vendor").resizable())
                            }
                            .frame(width: 50, height: 50)
                            .background(.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                            )
                        }
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                        .frame(maxWidth: .infinity, minHeight: 72, maxHeight: 72)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                        .cornerRadius(8)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Description")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(.black)
                            Text("⁠Sockets are primarily used to provide a safe and convenient means of connecting electrical devices to a power supply. They allow for the transfer of electrical energy from the power source to devices such as lamps, appliances, electronics, and other electrical equipment. ")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            HStack(spacing: 16) {
                                HStack(spacing: 8) {
                                    Text("Specification")
                                        .font(Font.custom("Alexandria", size: 13))
                                        .lineSpacing(18.20)
                                        .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                                }
                                .overlay(
                                    Rectangle()
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 0.50)
                                )
                                HStack(spacing: 8) {
                                    Text("Reviews")
                                        .font(Font.custom("Alexandria", size: 13).weight(.light))
                                        .lineSpacing(18.20)
                                        .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                                }
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            }
                            .frame(width: 343, height: 48)
                            .overlay(
                                Rectangle()
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                            )
                            VStack(alignment: .leading, spacing: 0) {
                                ZStack() {
                                    HStack() {
                                        Text("SKU")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        Text("D4803M1")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                    }
                                    .frame(width: 179, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Brand")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        Text("Bticino")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                    }
                                    .frame(width: 167, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Material")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        Text("Plastic")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                    }
                                    .frame(width: 164, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Color")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        Text("-")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                        
                                    }
                                    .frame(width: 133, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Unit")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        Text("Piece")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                        
                                    }
                                    .frame(width: 158, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Frame Size")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                            .offset(x: -60.50, y: 0)
                                        Text("10 x 7 cm²")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                        
                                    }
                                    .frame(width: 182, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Country of Origin")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        Text("Egypt")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                        
                                    }
                                    .frame(width: 160, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .cornerRadius(4)
                                ZStack() {
                                    HStack() {
                                        Text("Warranty")
                                            .font(Font.custom("Alexandria", size: 11))
                                            .lineSpacing(15.40)
                                            .foregroundColor(.black)
                                        
                                        Text("Against Manufacturing Defects")
                                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                                            .lineSpacing(15.40)
                                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                        
                                    }
                                    .frame(width: 294, height: 15)
                                }
                                .frame(width: 343, height: 24)
                                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                .cornerRadius(4)
                            }
                            .cornerRadius(12)
                        }
                        HStack(spacing: 8) {
                            VStack {
                                ZStack() {
                                    Image("Wallet").resizable()
                                }
                                .frame(width: 24, height: 24)
                                Text("Cash on Delivery")
                                    .font(Font.custom("Alexandria", size: 11))
                                    .foregroundColor(.black)
                                Text("Payment")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                            }
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 61, height: 0)
                                .overlay(
                                    Rectangle()
                                        .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                                )
                            VStack {
                                ZStack() {
                                    Image("Calendar").resizable()
                                }
                                .frame(width: 24, height: 24)
                                Text("Schedule Order")
                                    .font(Font.custom("Alexandria", size: 11))
                                    .foregroundColor(.black)
                                Text("up to 7 days")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                            }
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 61, height: 0)
                                .overlay(
                                    Rectangle()
                                        .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                                )
                            VStack {
                                ZStack() {
                                    Image("Sync-retry").resizable()
                                }
                                .frame(width: 24, height: 24)
                                Text("Return for free")
                                    .font(Font.custom("Alexandria", size: 11))
                                    .foregroundColor(.black)
                                Text("Within 14 days")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                            }
                        }
                        .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
                        .background(.white)
                        .cornerRadius(12)
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            HStack(spacing: 4) {
                                Text("The price includes VAT")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                            }
                            HStack(spacing: 8) {
                                Text("Delivery between 7-15 working days")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                HStack(spacing: 8) {
                                    Text("Need Help ?")
                                        .font(Font.custom("Alexandria", size: 11).weight(.light))
                                        .lineSpacing(15.40)
                                        .underline()
                                        .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                }
                            }
                        }
                        
                        // price and unit
                        HStack() {
                            VStack(spacing: 4) {
                                Text("23.50")
                                    .font(Font.custom("Alexandria", size: 20).weight(.bold))
                                    .lineSpacing(28)
                                    .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                                Text("EGP")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                            }
                            VStack {
                                Text("40,00 EGP")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .strikethrough()
                                    .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                            }
                            
                            HStack(spacing: 8) {
                                HStack {
                                    Text("Unit :")
                                        .font(Font.custom("Alexandria", size: 11).weight(.light))
                                        .lineSpacing(15.40)
                                        .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                    Text("Piece")
                                        .font(Font.custom("Alexandria", size: 13))
                                        .lineSpacing(18.20)
                                        .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                }
                                HStack() {
                                    Text("1")
                                        .font(Font.custom("Alexandria", size: 16))
                                        .lineSpacing(22.40)
                                        .foregroundColor(.black)
                                    
                                }
                                .frame(width: 87, height: 48)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 0.50)
                                )
                            }
                        }
                        .frame(width: 343)
                        
                        // buttons
                        HStack (spacing: 4){
                            NavigationLink(destination: CheckoutDeliveryScreen()){
                                VStack() {
                                    Text("Buy Now")
                                        .font(Font.custom("Alexandria", size: 16))
                                        .lineSpacing(22.40)
                                        .foregroundColor(.white)
                                }
                                .frame(width: 167.50, height: 48)
                                .background(Color(red: 1, green: 0.60, blue: 0))
                                .cornerRadius(12)
                            }
                            // TODO: FIX this shouldn't go to screen but just add the object to cart and maybe show the added to cart screen
                            NavigationLink (destination: CartScreen()){
                                VStack(spacing: 8) {
                                    Text("Add to Cart")
                                        .font(Font.custom("Alexandria", size: 16))
                                        .lineSpacing(22.40)
                                        .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                                }
                                .frame(width: 167.50, height: 48)
                                .cornerRadius(12)
                            }
                        }
                    }
                    .padding(.horizontal, 32)
                }
            }
        }
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails()
    }
}
