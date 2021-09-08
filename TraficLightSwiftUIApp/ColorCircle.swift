//
//  ColorCircle.swift
//  TraficLightSwiftUIApp
//
//  Created by Константин Прокофьев on 07.09.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var opacity: Double
    var body: some View {
        Circle()
            .opacity(opacity)
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 5)
            .padding()
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .yellow, opacity: 0.2)
    }
}
