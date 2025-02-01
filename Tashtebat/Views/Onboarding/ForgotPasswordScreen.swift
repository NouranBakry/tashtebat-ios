//
//  ForgotPasswordScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 01/01/2025.
//

import SwiftUI

struct ForgotPasswordScreen: View {
    var sendCodeAction : () -> Void = { }
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all) // Extend the background to the entire screen
            VStack(alignment: .leading, spacing: 56) {
                VStack(alignment: .leading, spacing: 8) {
                    ZStack() {
                        // TODO: back arrow button to go back to login page
                        NavigationLink(destination: LoginScreen()){
                            ZStack() {
                                Image("back_arrow")
                            }
                            .frame(width: 16, height: 16)
                            .offset(x: 0, y: 0)
                        }
                    }
                    .frame(width: 32, height: 32)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Forgot Password")
                            .font(Font.custom("Alexandria", size: 24))
                            .lineSpacing(33.60)
                            .foregroundColor(.black)
                        Text("Enter the phone number associated with your account")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                }
                VStack{
                    Image("phone_verify_icon")
                }
                // TODO: embed text field for phone number
                VStack{
                    Image("phone_eg_input")
                }
                // TODO: implement actions for the button
                // and then go to verification code input screen
                HorizontalButton(title: "Send Verification Code", action: sendCodeAction)
            }
        }
        }
        .hideBackButton()
    }
}

struct ForgotPasswordScreen_previews: PreviewProvider{
    static var previews: some View{
        ForgotPasswordScreen()
    }
}

