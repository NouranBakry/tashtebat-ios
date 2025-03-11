//
//  OrderPlacedScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 17/02/2025.
//

import SwiftUI

struct OrderPlacedScreen: View {
    var body: some View{
        NavigationView{
            ZStack{
                VStack(spacing: 24) {
                  ZStack() {
                    ZStack() {
                      ZStack() {
                          Image("Success Icon").resizable()
                      }
                      .frame(width: 42, height: 42)
                      .offset(x: 0.50, y: 0)
                    }
                    .frame(width: 166, height: 166)
                    .background(Color(red: 0.33, green: 0.73, blue: 0.42))
                    .cornerRadius(100)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 80, height: 80)
                  .background(Color(red: 0.74, green: 0.89, blue: 0.77))
                  .cornerRadius(100)
                  .overlay(
                    RoundedRectangle(cornerRadius: 100)
                      .inset(by: 5)
                      .stroke(Color(red: 0.74, green: 0.89, blue: 0.77), lineWidth: 5)
                  )
                  VStack(spacing: 8) {
                    Text("Your Order has been placed")
                      .font(Font.custom("Alexandria", size: 16))
                      .lineSpacing(22.40)
                      .foregroundColor(.black)
                    Text("We are processing your order")
                      .font(Font.custom("Alexandria", size: 13).weight(.light))
                      .lineSpacing(18.20)
                      .foregroundColor(.black)
                  }
                }
            }
        }
    }
}


struct OrderPlacedScreen_previews: PreviewProvider {
    static var previews: some View {
        OrderPlacedScreen()
    }
}
