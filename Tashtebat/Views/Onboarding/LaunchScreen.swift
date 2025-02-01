//
//  LaunchScreen.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 30/12/2024.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all) // Extend the background to the entire screen
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                .onAppear {
                    // Delay before navigating to onboarding
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isActive = true
                    }
                }
                .navigationDestination(isPresented: $isActive) {
                    OnboardingScreen1()
                }
            }
        }
    }
}

struct LaunchScreen_previews: PreviewProvider{
    static var previews: some View {
        LaunchScreen()
    }
}
