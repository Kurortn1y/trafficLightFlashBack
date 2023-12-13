//
//  LightView.swift
//  trafficLightFlashBack
//
//  Created by Roman on 13.12.23.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let width: CGFloat
    let opacity: Double

    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: width)
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .opacity(opacity)
    }
}
