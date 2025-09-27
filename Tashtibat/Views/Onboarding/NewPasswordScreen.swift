//
//  NewPasswordScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 01/01/2025.
//

import SwiftUI

struct NewPasswordScreen: View {
    var confirmNewPassAction: () -> Void = {}
    var body : some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all) // Extend the background to the entire screen
            VStack(alignment: .leading, spacing: 8) {
                ZStack() {
                    ZStack() {
                        Image("back_arrow")
                    }
                    .frame(width: 16, height: 16)
                    .offset(x: 0, y: 0)
                }
                .frame(width: 32, height: 32)
                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                .cornerRadius(8)
                VStack(alignment: .leading, spacing: 8) {
                    Text("New Password")
                        .font(Font.custom("Alexandria", size: 24))
                        .lineSpacing(33.60)
                        .foregroundColor(.black)
                    Text("Enter your new password and don’t forget it")
                        .font(Font.custom("Alexandria", size: 13).weight(.light))
                        .lineSpacing(18.20)
                        .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                }
                ZStack{
                    Image("key_icon")
                }
                
                // TODO: embed in text fields + validation
                HStack{
                    Image("new_pass_input")
                }
                
                HStack{
                    Image("confirm_new_pass")
                }
                
                HStack(alignment: .top, spacing: 16) {
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 103.67, height: 5)
                            .background(Color(red: 1, green: 0.92, blue: 0.80))
                            .cornerRadius(50)
                            .offset(x: 0, y: 0)
                    }
                    .frame(width: 103.67, height: 5)
                    .background(.white)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 103.67, height: 5)
                            .background(Color(red: 1, green: 0.76, blue: 0.40))
                            .cornerRadius(50)
                            .offset(x: 0, y: 0)
                    }
                    .frame(width: 103.67, height: 5)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 103.67, height: 5)
                            .background(Color(red: 1, green: 0.60, blue: 0))
                            .cornerRadius(50)
                            .offset(x: 0, y: 0)
                    }
                    .frame(width: 103.67, height: 5)
                }
                .frame(width: 343, height: 5);
                VStack(alignment: .leading, spacing: 4) {
                    HStack(spacing: 8) {
                        ZStack() {
                            // TODO: Add condition to toggle grey to green on validation of new password
                            ZStack() {
                                Image("grey_checkbox")
                            }
                            .frame(width: 9, height: 9)
                            .offset(x: 0, y: 0)
                        }
                        Text("Be at least 8 characters long")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    HStack(spacing: 8) {
                        ZStack() {
                            ZStack() {
                                Image("grey_checkbox")
                            }
                            .frame(width: 9, height: 9)
                            .offset(x: 0, y: 0)
                        }
                        Text("Have at least 1 uppercase")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    HStack(spacing: 8) {
                        ZStack() {
                            ZStack() {
                                Image("grey_checkbox")
                            }
                            .frame(width: 9, height: 9)
                            .offset(x: 0, y: 0)
                        }
                        Text("Have at least 1 lowercase")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    HStack(spacing: 8) {
                        ZStack() {
                            ZStack() {
                                Image("grey_checkbox")
                            }
                            .frame(width: 9, height: 9)
                            .offset(x: 0, y: 0)
                        }
                        Text("Have at least 1 special character")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    HStack(spacing: 8) {
                        ZStack() {
                            ZStack() {
                                Image("grey_checkbox")
                            }
                            .frame(width: 9, height: 9)
                            .offset(x: 0, y: 0)
                        }
                        Text("Have at least 1 number")
                            .font(Font.custom("Alexandria", size: 11).weight(.light))
                            .lineSpacing(15.40)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                }
                .frame(width: 188, height: 91);
                // TODO: Embed in button to send an api call to confirm password change CRUD -> then go to password changed success message with login 
                HorizontalButton(title: "Confirm New Password", action: confirmNewPassAction)
            }
            .frame(width: 277, height: 100)
        };

    }
}

struct NewPasswordScreen_previews: PreviewProvider {
    static var previews: some View {
        NewPasswordScreen()
    }
}
