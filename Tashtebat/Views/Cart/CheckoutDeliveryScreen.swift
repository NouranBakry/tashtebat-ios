//
//  CheckoutDeliveryScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct CheckoutDeliveryScreen: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack(spacing: 16) {
                      Text("Checkout")
                        .font(Font.custom("Alexandria", size: 20))
                        .lineSpacing(28)
                        .foregroundColor(.black)
                    }
                    
                    HStack(spacing: 96) {
                      HStack(spacing: 10) {
                        Ellipse()
                          .foregroundColor(.clear)
                          .frame(width: 16, height: 16)
                          .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                          .overlay(
                            Ellipse()
                              .inset(by: 1.75)
                              .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 1.75)
                          )
                      }
                      HStack(spacing: 10) {
                        Ellipse()
                          .foregroundColor(.clear)
                          .frame(width: 16, height: 16)
                          .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                          .overlay(
                            Ellipse()
                              .inset(by: 1.75)
                              .stroke(Color(red: 0.66, green: 0.66, blue: 0.66), lineWidth: 1.75)
                          )
                      }
                      HStack(spacing: 10) {
                        Ellipse()
                          .foregroundColor(.clear)
                          .frame(width: 16, height: 16)
                          .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                          .overlay(
                            Ellipse()
                              .inset(by: 1.75)
                              .stroke(Color(red: 0.66, green: 0.66, blue: 0.66), lineWidth: 1.75)
                          )
                      }
                    }
                    .padding(EdgeInsets(top: 0, leading: 56, bottom: 0, trailing: 40))
                    .frame(width: 375);
                    
                    // steps
                    HStack(spacing: 40) {
                      Text("Delivery details")
                        .font(Font.custom("Alexandria", size: 13))
                        .lineSpacing(18.20)
                        .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                      Text("Payment")
                        .font(Font.custom("Alexandria", size: 13).weight(.light))
                        .lineSpacing(18.20)
                        .foregroundColor(.black)
                      Text("Place Order")
                        .font(Font.custom("Alexandria", size: 13).weight(.light))
                        .lineSpacing(18.20)
                        .foregroundColor(.black)
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    .frame(width: 375);
                    
                    
                    //Delivery Date section
                    
                    VStack(alignment: .leading, spacing: 8) {
                      Text("Delivery Date")
                        .font(Font.custom("Alexandria", size: 13))
                        .lineSpacing(18.20)
                        .foregroundColor(.black)
                        //TODO: fix checkbox selection
                      HStack(spacing: 8) {
                        HStack(spacing: 8) {
                          ZStack() {
                              Image("Delivery time").resizable()
                          }
                          .frame(width: 24, height: 24)
                          Text("Right Away")
                            .font(Font.custom("Alexandria", size: 13))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                        }
                        HStack(spacing: 16) {
                          HStack(spacing: 8) {
                            Text("Within 8 hrs")
                              .font(Font.custom("Alexandria", size: 11))
                              .lineSpacing(15.40)
                              .foregroundColor(.white)
                          }
                          .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                          .background(Color(red: 1, green: 0.60, blue: 0))
                          .cornerRadius(12)
                          HStack(spacing: 10) {
                            HStack(spacing: 8) {
                              Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 16, height: 16)
                                .background(Color(red: 1, green: 0.60, blue: 0))
                                .overlay(
                                  Ellipse()
                                    .inset(by: 1.75)
                                    .stroke(Color(red: 0.98, green: 0.98, blue: 0.98), lineWidth: 1.75)
                                )
                            }
                            .cornerRadius(50)
                            .overlay(
                              RoundedRectangle(cornerRadius: 50)
                                .inset(by: -0.50)
                                .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 0.50)
                            )
                          }
                        }
                      }
                      .padding(16)
                      .frame(width: 343)
                      .background(Color(red: 1, green: 0.96, blue: 0.90))
                      .cornerRadius(12)
                      .overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.50)
                          .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 0.50)
                      )
                      HStack(spacing: 8) {
                        HStack(spacing: 8) {
                          ZStack() {
                              Image("Delivery").resizable()
                          }
                          .frame(width: 24, height: 24)
                          Text("Pickup a delivery date")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(.black)
                        }
                        HStack(spacing: 16) {
                          HStack(spacing: 8) {
                            Text("Select Date")
                              .font(Font.custom("Alexandria", size: 11).weight(.light))
                              .lineSpacing(15.40)
                              .foregroundColor(.black)
                          }
                          .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                          .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                          .cornerRadius(12)
                          HStack(spacing: 10) {
                            HStack(spacing: 8) {
                              Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 16, height: 16)
                                .overlay(
                                  Ellipse()
                                    .inset(by: 1.75)
                                    .stroke(Color(red: 0.98, green: 0.98, blue: 0.98), lineWidth: 1.75)
                                )
                            }
                            .cornerRadius(50)
                            .overlay(
                              RoundedRectangle(cornerRadius: 50)
                                .inset(by: -0.50)
                                .stroke(Color(red: 0.66, green: 0.66, blue: 0.66), lineWidth: 0.50)
                            )
                          }
                        }
                      }
                      .padding(16)
                      .frame(width: 343)
                      .cornerRadius(12)
                      .overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.50)
                          .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 0.50)
                      )
                    }
                    // continue to Checkout Payment Screen button
                    ZStack() {
                        NavigationLink(destination:CheckoutPaymentScreen()){
                            HStack(spacing: 8) {
                                Text("Continue")
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

struct CheckoutDeliveryScreen_previews: PreviewProvider {
    static var previews: some View {
        CheckoutDeliveryScreen()
    }
}
