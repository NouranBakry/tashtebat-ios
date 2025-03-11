//
//  CheckoutPaymentScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct CheckoutPaymentScreen: View{
    var body: some View{
        ZStack{
            Color(.white).edgesIgnoringSafeArea(.all)
            VStack{
                HStack(spacing: 16){
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
                
                VStack(alignment: .leading, spacing: 16) {
                  HStack(spacing: 96) {
                    HStack(spacing: 10) {
                      HStack(spacing: 10) {
                        HStack(spacing: 10) {
                          ZStack() {
                            ZStack() {

                            }
                            .frame(width: 12, height: 12)
                            .offset(x: 0, y: 0)
                          }
                          .frame(width: 16, height: 16)
                          .background(Color(red: 0.16, green: 0.65, blue: 0.27))
                          .cornerRadius(10)
                        }
                      }
                    }
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
                  }
                  .padding(EdgeInsets(top: 0, leading: 56, bottom: 0, trailing: 40))
                  .frame(width: 375)
                  HStack(spacing: 56) {
                    Text("Delivery details")
                      .font(Font.custom("Alexandria", size: 13))
                      .lineSpacing(18.20)
                      .foregroundColor(Color(red: 0.16, green: 0.65, blue: 0.27))
                    Text("Payment")
                      .font(Font.custom("Alexandria", size: 13))
                      .lineSpacing(18.20)
                      .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                    Text("Place Order")
                      .font(Font.custom("Alexandria", size: 13).weight(.light))
                      .lineSpacing(18.20)
                      .foregroundColor(.black)
                  }
                  .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
                // cash payment
                VStack(alignment: .leading, spacing: 8) {
                  VStack(alignment: .leading, spacing: 8) {
                    Text("Payment Options")
                      .font(Font.custom("Alexandria", size: 13))
                      .lineSpacing(18.20)
                      .foregroundColor(.black)
                  }
                  ZStack() {
                    HStack(spacing: 17) {
                      ZStack() {
                          Image("cash").resizable()
                      }
                      .frame(width: 32, height: 32)
                      VStack(alignment: .leading, spacing: 4) {
                        Text("Cash on Delivery")
                          .font(Font.custom("Alexandria", size: 13))
                          .lineSpacing(18.20)
                          .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                        Text("65 EGP fees applied")
                          .font(Font.custom("Alexandria", size: 11))
                          .lineSpacing(15.40)
                          .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                      }
                    }
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
                    .offset(x: 148, y: 0)
                  }
                  .frame(width: 342, height: 58)
                  .background(Color(red: 1, green: 0.96, blue: 0.90))
                  .cornerRadius(12)
                  .overlay(
                    RoundedRectangle(cornerRadius: 12)
                      .inset(by: 0.50)
                      .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 0.50)
                  )
                }
                
                // Continue button
                ZStack() {
                    NavigationLink (destination: CheckoutPlaceOrderScreen()){
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

struct CheckoutPaymentScreen_previews: PreviewProvider {
    static var previews: some View {
        CheckoutPaymentScreen()
    }
}
