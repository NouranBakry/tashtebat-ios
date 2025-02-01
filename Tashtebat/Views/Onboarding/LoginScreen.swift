//
//  LoginScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 30/12/2024.
//

import SwiftUI

struct LoginScreen : View {
    @State private var email: String = ""
    @State private var emailError: String? = nil

    var loginAction: () -> Void = { }
    var body: some View {
        NavigationStack{
            ZStack{
                // Set the background to white
                Color.white
                    .edgesIgnoringSafeArea(.all) // Extend to cover safe areas
                VStack(spacing: 16){
                    // title
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Log in")
                            .font(Font.custom("Alexandria", size: 24))
                            .foregroundColor(.black)
                        Text("Welcome back!")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }

                    // Email Input
                    VStack {
                        TextField("Email", text: $email)
                            .offset(x: -136.50, y: 0)
                            .cornerRadius(12)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .onChange(of: email, perform: validateEmail)
                        
                        if let error = emailError {
                            Text(error)
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                    }
                    .frame(width: 343, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                          .inset(by: 0.50)
                          .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                      )
                    //TODO: change to input field
                    VStack{
                        Image("password_input")
                    }
                    
                    VStack(alignment: .leading, spacing: 8){
                        NavigationLink(destination: ForgotPasswordScreen()){
                            Text("Forgot your password?")
                                .font(Font.custom("Alexandria", size: 13).weight(.light))
                                .lineSpacing(18.20)
                                .foregroundColor(.black)
                        }
                    }
                    HStack(spacing: 16) {
                        Text("Or Log in with")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(.black)
                    }
                    .frame(width: 343, height: 15);
                    //TODO: Wrap in Buttons with redirect
                    HStack{
                        Button(action: {}){
                            Image("google_login")
                        }
                    }

                    HStack {
                        Button(action:{}){
                            Image("facebook_login")
                        }
                    }
                    


                    HStack {
                        Text("Don’t have an account ?")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(.black)
                        NavigationLink(destination: SignupScreen()){
                            Text("Sign up")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                        }
                        .frame(width: 208, height: 18);
                    }

                        VStack{
                            HorizontalButton(title: "Log in", action: loginAction)
                            //TODO: terms and services should link to a page that maybe shows our terms and services
//                            GoogleButton(title: "Log in with Google", action: loginAction)
                            
                            Text("By using Our services agreeing to Terms and Privacy Policy")
                                .font(Font.custom("Alexandria", size: 11).weight(.light))
                                .lineSpacing(15.40)
                                .foregroundColor(.black);
                        }
                }
            }
        }
    }
    func validateEmail(_ value: String) {
        if value.isEmpty {
            emailError = "Email cannot be empty."
        } else if !value.contains("@") {
            emailError = "Please enter a valid email."
        } else {
            emailError = nil
        }
    }
}

struct LoginScreen_previews: PreviewProvider{
    static var previews: some View{
        LoginScreen()
    }
}
