//
//  HideBackButtonViewModifier.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 23/01/2025.
//

import SwiftUI

// View modifier to hide the back button
struct HideBackButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true) // Hides the back button
    }
}

// Extension to make it easier to use
extension View {
    func hideBackButton() -> some View {
        self.modifier(HideBackButtonModifier()) // Applies the modifier
    }
}
