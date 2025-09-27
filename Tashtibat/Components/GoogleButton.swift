//
//  GoogleButton.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 27/01/2025.
//

import SwiftUI

struct GoogleButton: View {
    var title: String
    var backgroundColor: Color = .blue
    var textColor: Color = .white
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                    Image("Google")
                        .resizable()
                        .frame(width: 20, height: 20)
                
                    Text(title)
                      .font(Font.custom("Alexandria", size: 16))
                      .lineSpacing(18.20)
                    .foregroundColor(Color(red: 1, green: 0.60, blue: 0))
                  }
                  .offset(x: 0.50, y: -1)
                }
                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                .frame(width: 343, height: 48)
                .background(Color(red: 1, green: 0.96, blue: 0.90))
                .cornerRadius(12)
                .overlay(
                     RoundedRectangle(cornerRadius: 12)
                       .inset(by: 0.50)
                       .stroke(Color(red: 1, green: 0.60, blue: 0), lineWidth: 0.50)
                   )
        }
}

