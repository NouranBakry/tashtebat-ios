//
//  PasswordChangedScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 01/01/2025.
//

import SwiftUI

struct PasswordChangedScreen: View{
    var loginAction : () -> Void = {}
    var body: some View{
        NavigationStack{
            VStack(spacing: 30) {
                VStack(spacing: 24) {
                    ZStack() {
                        ZStack() {
                            ZStack() {
                                Image("success_checkbox")
                            }
                            .frame(width: 42, height: 42)
                            .offset(x: 0.50, y: 0)
                        }
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
                        Text("Password has been changed\nsuccessfully")
                            .font(Font.custom("Alexandria", size: 16))
                            .lineSpacing(22.40)
                            .foregroundColor(.black)
                        Text("Try to keep the password safe")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    .frame(maxWidth: .infinity, minHeight: 70, maxHeight: 70)
                }
                .frame(height: 174)
                ZStack() {
                    HStack(spacing: 8) {
                        NavigationLink(destination: LoginScreen()){
                            HorizontalButton(title: "Log in", action: loginAction)
                        }
                        .offset(x: 0.50, y: -1)
                    }
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 32, trailing: 16))
            .frame(width: 375, height: 330)
            .background(.white)
            .cornerRadius(20);
        }
        .navigationBarHidden(true)
    }
}

struct PasswordChangedScreen_previews: PreviewProvider{
    static var previews: some View {
        PasswordChangedScreen()
    }
}
