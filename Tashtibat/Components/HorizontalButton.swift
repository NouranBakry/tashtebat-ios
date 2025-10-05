//
//  HorizontalButton.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 22/01/2025.
//

import SwiftUI

struct HorizontalButton: View {
    var title: String
    var backgroundColor: Color = AppColor.primary500
    var textColor: Color = .white
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Text(title)
                    .font(AppTypography.Title())
                    .lineSpacing(22.40)
                    .foregroundColor(.white)
            }
            .offset(x: 0.50, y: -1)
        }
        .frame(width: 343, height: 48)
        .background(backgroundColor)
        .cornerRadius(12);
    }
}
