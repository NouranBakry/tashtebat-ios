//
//  OnboardingScreen3.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 30/12/2024.
//

import SwiftUI

struct OnboardingScreen3: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white.ignoresSafeArea()
                VStack {
                    ZStack {
                        Ellipse()
                            .fill(Color(red: 1, green: 0.92, blue: 0.80))
                            .frame(width: 513, height: 515)
                            .offset(x: 2, y: -204.50)
                        
                        Image("video player")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .offset(y: -50)
                    }
                    .frame(width: 513, height: 515)
                    VStack(spacing: 8) {
                        Text("Personalized Recommendations")
                            .font(Font.custom("Alexandria", size: 16))
                            .lineSpacing(22.40)
                            .foregroundColor(.black)
                        Text("OnboardingScreen3 Paragraph")
                            .font(Font.custom("Alexandria", size: 13).weight(.light))
                            .lineSpacing(18.20)
                            .foregroundColor(Color(red: 0.28, green: 0.28, blue: 0.28))
                    }
                    .frame(width: 280, height: 66);
                    HStack {
                        Button(action: {hasSeenOnboarding = true}){
                            Text("Skip")
                                .font(AppTypography.Body())
                                .foregroundColor(AppColor.primary500)
                        }
                        Spacer()
                        HStack(alignment: .top, spacing: 7) {
                            Image("Frame 52478")
                                .resizable()
                                .scaledToFit()
                        }
                        .frame(width: 50, height: 6)
                        
                        Spacer()
                        NavigationLink(destination: LoginScreen()){
                            Image("onboarding_next_button")
                        }
                        
                    }
                    .frame(width: 343, height: 48);
                }
            }
        }
    }
}

struct OnboardingScreen3_previews: PreviewProvider{
    static var previews: some View {
        OnboardingScreen3()
    }
}
