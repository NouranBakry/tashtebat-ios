
//
//  OnboardingScreen3.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 30/12/2024.
//

import SwiftUI

struct OnboardingScreen2: View {
    var body: some View {
        NavigationStack{
            ZStack {
                // Set the background to white
                Color.white
                    .edgesIgnoringSafeArea(.all) // Extend to cover safe areas
                VStack {
                    ZStack {
                        Ellipse()
                            .fill(Color(red: 1, green: 0.92, blue: 0.80)) // Fill color for the ellipse
                            .frame(width: 513, height: 515) // Adjust height and width
                            .offset(x: 2, y: -204.50)
                        // Image centered within the ellipse
                        Image("video player") // Replace with your image name
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150) // Adjust the size of the image
                            .offset(y: -50) // Center the image within the ellipse
                    }
                    .frame(width: 513, height: 515)
                    VStack(spacing: 8) {
                        Text("Exclusive Offers")
                            .font(Font.custom("Alexandria", size: 16))
                            .lineSpacing(22.40)
                            .foregroundColor(.black)
                        Text("OnboardingScreen2 Paragraph")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    .frame(width: 280, height: 66);
                    ZStack() {
                        NavigationLink(destination: SignupScreen()){
                            Text("Skip")
                                .font(Font.custom("Alexandria", size: 13))
                                .lineSpacing(18.20)
                                .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                                .offset(x: -157, y: 0)
                        }
                            HStack(alignment: .top, spacing: 7) {
                                Image("Frame 52478")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 50, height: 6)
                            .offset(x: -9.50, y: 0)
                        
                        HStack(alignment: .top, spacing: 8) {
                            NavigationLink(destination: OnboardingScreen3()){
                                Image("onboarding_next_button")
                            }
                        }
                        .padding(16)
                        .frame(width: 48, height: 48)
                        .cornerRadius(50)
                        .offset(x: 147.50, y: 0)
                    }
                    .frame(width: 343, height: 48);
                }
            }
        }
    }
}

struct OnboardingScreen2_previews: PreviewProvider{
    static var previews: some View {
        OnboardingScreen2()
    }
}
