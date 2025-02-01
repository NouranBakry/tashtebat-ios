//
//  VerificationScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 01/01/2025.
//

import SwiftUI
// INCOMPLETE
struct VerificationScreen: View {
    var verifyCode: () -> Void = {}
    var body: some View {
        NavigationStack{
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all) // Extend the background to the entire screen
                VStack(alignment: .leading, spacing: 8) {
                    NavigationLink(destination: NewPasswordScreen()){
                        ZStack() {
                            Image("back_arrow")
                        }
                        .frame(width: 16, height: 16)
                        .offset(x: 0, y: 0)
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Enter Verification Code")
                            .font(Font.custom("Alexandria", size: 24))
                            .lineSpacing(33.60)
                            .foregroundColor(.black)
                        Image("verification_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        // TODO: get number from previous screen? and add it to the line below
                        Text("4 - digit code was sent to +20*****2646")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        // TODO: actual timer here
                        Text("Request code again in 00:56")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                        HStack(alignment: .top, spacing: 40) {
                            ZStack() {
                                // TODO: add text box
                            }
                            .frame(width: 56, height: 56)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                            )
                            ZStack() {
                            }
                            .frame(width: 56, height: 56)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                            )
                            ZStack() {
                            }
                            .frame(width: 56, height: 56)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                            )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 56, height: 56)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 0.50)
                                )
                        }
                        HorizontalButton(title: "Verify and Proceed", action: verifyCode)
                    }
                }
                .frame(width: 276, height: 126)
            };
        }
    }
}

struct VerificationScreen_previews: PreviewProvider{
    static var previews: some View {
        VerificationScreen()
    }
}
