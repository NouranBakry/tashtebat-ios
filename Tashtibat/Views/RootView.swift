//
//  RootView.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 10/02/2025.
//


import SwiftUI

struct RootView: View {
    @AppStorage("isLoggedIn") private var storedIsLoggedIn: Bool = false
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding = false
    
    @State private var isLoggedIn: Bool = false // ✅ Use @State for UI updates
    @State private var showLaunchScreen = true
    
    var body: some View {
        VStack{
            if showLaunchScreen{
                LaunchScreen()
            }
            else {
                if !hasSeenOnboarding{
                    OnboardingScreen1()
                }
                else if !isLoggedIn{
                    LoginScreen()
                } else {
                    MainTabView()
                }
            }
        }
        .onAppear {
            isLoggedIn = storedIsLoggedIn
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                showLaunchScreen = false
            }
        }
        .onChange(of: storedIsLoggedIn) { newValue in
            isLoggedIn = newValue
        }
    }
}

