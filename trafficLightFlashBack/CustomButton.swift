//
//  Button.swift
//  trafficLightFlashBack
//
//  Created by Roman on 13.12.23.
//

import SwiftUI

struct CustomButton: View {
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: { self.action() }, label: {
            Text(buttonText)
                .font(.title)
                .foregroundStyle(.white)
        })
        .frame(width: 160, height: 50)
        .clipShape(Rectangle())
        .overlay(Rectangle().stroke(Color.white, lineWidth: 8))
        .background(Color.blue)
        .cornerRadius(10)
    }
}

