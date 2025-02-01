//
//  HorizontalButton.swift
//  Tashtebat
//
//  Created by Nouran Bakry on 22/01/2025.
//

import SwiftUI

struct HorizontalButton: View {
    var title: String
    var backgroundColor: Color = .blue
    var textColor: Color = .white
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                    Text(title)
                      .font(Font.custom("Alexandria", size: 16))
                      .lineSpacing(22.40)
                      .foregroundColor(.white)
                  }
                  .offset(x: 0.50, y: -1)
                }
                .frame(width: 343, height: 48)
                .background(Color(red: 1, green: 0.60, blue: 0))
                .cornerRadius(12);
        }
}

// Example Usage:
// TODO: Delete this
struct ContentView: View {
    var body: some View {
        VStack {
            HorizontalButton(title: "Primary Button", action: {
                print("Button Pressed!")
            })
            HorizontalButton(title: "Secondary Button", backgroundColor: .gray, action: {
                print("Secondary Button Pressed!")
            })
        }
    }
}
