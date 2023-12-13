//
//  ContentView.swift
//  trafficLightFlashBack
//
//  Created by Roman on 13.12.23.
//

import SwiftUI

enum LightState {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State var currentState = LightState.red
    @State private var isFirstPress = true
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
            VStack {
                LightView(
                    color: .red,
                    width: 100,
                    opacity: currentState == .red ? 0.8 : 0.4
                
                )
                    .padding(4)
                LightView(
                    color: .yellow,
                    width: 100,
                    opacity: currentState == .yellow ? 0.8 : 0.4
                    
                )
                    .padding(4)
                LightView(
                    color: .green,
                    width: 100,
                    opacity: currentState == .green ? 0.8 : 0.4
                )
                    .padding(4)
                Spacer()
                
                CustomButton(
                    buttonText: isFirstPress ? "Start" : "Next",
                    action: { 
                        switchLight()
                        isFirstPress = false
                    }
                )
                    .padding(.bottom , 50)
            }
            .padding(.top,80)
        }
        .ignoresSafeArea()
    }
}






private extension ContentView {
    func switchLight() {
        switch currentState {
        case .red:
            currentState = .yellow
        case .yellow:
            currentState = .green
        case .green:
            currentState = .red
        }
    }
}





#Preview {
    ContentView()
}
