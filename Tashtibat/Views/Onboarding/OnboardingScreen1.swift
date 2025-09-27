//
//  OnboardingScreen1.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 30/12/2024.
//

import SwiftUI

struct OnboardingScreen1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Set the background to white
                Color.white
                    .edgesIgnoringSafeArea(.all) // Extend to cover safe areas

                VStack(spacing: 20) {
                    ZStack {
                        Ellipse()
                            .fill(Color(red: 1, green: 0.92, blue: 0.80)) // Fill color for the ellipse
                            .frame(width: 513, height: 515)
                            .offset(x: 2, y: -204.5)

                        Image("plant") // Replace with your image name
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .offset(y: -50)
                    }

                    VStack(spacing: 8) {
                        Text("Seamless Shopping")
                            .font(.custom("Alexandria", size: 16))
                            .lineSpacing(22.4)
                            .foregroundColor(.black)

                        Text("OnboardingScreen1 Paragraph")
                            .font(.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.2)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 280)

                    ZStack {
                        NavigationLink(destination: SignupScreen()){
                            Text("Skip")
                                .font(.custom("Alexandria", size: 13))
                                .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                            HStack(spacing: 7) {
                                Image("Frame 52478")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 6)
                            }
                        
                        NavigationLink(destination: OnboardingScreen2()) {
                            Image("onboarding_next_button")
                                .resizable()
                                .frame(width: 48, height: 48)
                                .cornerRadius(24)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .frame(width: 343, height: 48)
                }
            }
        }
    }
}

struct OnboardingScreen1_previews: PreviewProvider{
    static var previews: some View {
        OnboardingScreen1()
    }
}
