//
//  TashtebatApp.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 20/12/2024.
//

import SwiftUI

@main
struct TashtebatApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                LaunchScreen()
            }
            .hideBackButton()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}
