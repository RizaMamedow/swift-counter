//
//  CircleButtonStyle.swift
//  SwiftCounter
//
//  Created by Riza Mamedov on 26.01.2024.
//

import SwiftUI

struct CircleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                Circle()
                    .fill(Color.accentColor)
            )
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .animation(.easeInOut(duration: 0.5), value: configuration.isPressed)
    }
}

extension ButtonStyle where Self == CircleButtonStyle {
    static var circleButton: Self { Self() }
}

