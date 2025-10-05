
//
//  OnboardingScreen3.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 30/12/2024.
//

import SwiftUI

struct OnboardingScreen2: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.white.ignoresSafeArea()
                VStack {
                    ZStack {
                        Ellipse()
                            .fill(AppColor.primary100)
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
                        Text("Exclusive Offers")
                            .font(AppTypography.Title())
                            .lineSpacing(22.40)
                            .foregroundColor(.black)
                        Text("OnboardingScreen2 Paragraph")
                            .font(AppTypography.BodyLight())
                            .lineSpacing(18.20)
                            .foregroundColor(AppColor.grey900)
                    }
                    .frame(width: 280)
                    
                    HStack() {
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
                        
                        NavigationLink(destination: OnboardingScreen3()){
                            Image("onboarding_next_button")
                        }
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
