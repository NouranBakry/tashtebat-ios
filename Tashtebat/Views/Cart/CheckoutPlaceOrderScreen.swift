//
//  CheckoutPlaceOrderScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 11/03/2025.
//

import SwiftUI

struct CheckoutPlaceOrderScreen: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    HStack(spacing: 16) {
                        ZStack() {
                            ZStack() {
                                Image("Back arrow icon").resizable()
                            }
                            .frame(width: 16, height: 16)
                            .offset(x: 0, y: 0)
                        }
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                        .cornerRadius(8)
                        Text("Checkout")
                            .font(Font.custom("Alexandria", size: 20))
                            .lineSpacing(28)
                            .foregroundColor(.black)
                    }
                    .frame(width: 375, height: 56)
                    .background(.white)
                    
                    // Order Summary
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Order Summary")
                            .font(Font.custom("Alexandria", size: 13))
                            .lineSpacing(18.20)
                            .foregroundColor(.black)
                        VStack(spacing: 8) {
                            ZStack() {
                                Text("Sub-Total")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                                    .offset(x: -129, y: 0)
                                Text("115,6 EGP")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.black)
                                    .offset(x: 117.56, y: 0)
                            }
                            .frame(width: 310, height: 15)
                            ZStack() {
                                Text("Shipping Fee")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(Color(red: 0.66, green: 0.66, blue: 0.66))
                                    .offset(x: -119.50, y: 0)
                                Text("65 EGP")
                                    .font(Font.custom("Alexandria", size: 11).weight(.light))
                                    .lineSpacing(15.40)
                                    .foregroundColor(.black)
                                    .offset(x: 117.56, y: 0)
                            }
                            .frame(width: 310, height: 15)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 310, height: 0)
                                .overlay(
                                    Rectangle()
                                        .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 0.50)
                                )
                            ZStack() {
                                Text("Total Amount")
                                    .font(Font.custom("Alexandria", size: 16))
                                    .lineSpacing(22.40)
                                    .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                                    .offset(x: -100, y: 0)
                                Text("115,6 EGP")
                                    .font(Font.custom("Alexandria", size: 16).weight(.bold))
                                    .lineSpacing(22.40)
                                    .foregroundColor(.black)
                                    .offset(x: 117.56, y: 0)
                            }
                            .frame(width: 310, height: 22)
                        }
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        .frame(width: 343)
                        .background(.white)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                        )
                    }
                    
                    // Place order button
                    NavigationLink(destination:OrderPlacedScreen()){
                        ZStack() {
                            HStack(spacing: 8) {
                                Text("Place Order")
                                    .font(Font.custom("Alexandria", size: 16))
                                    .lineSpacing(22.40)
                                    .foregroundColor(.white)
                            }
                            .offset(x: 0.50, y: -1)
                        }
                        .frame(width: 343, height: 48)
                        .background(Color(red: 1, green: 0.60, blue: 0))
                        .cornerRadius(12);
                    }
                }
            }
        }
    }
}

struct CheckoutPlaceOrderScreen_previews: PreviewProvider {
    static var previews: some View {
        CheckoutPlaceOrderScreen()
    }
}
