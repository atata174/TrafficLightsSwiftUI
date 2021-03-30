//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by PenguinRaja on 27.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonText = "START"
    
    @State private var tapCount = 0
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity  = 0.3
    @State private var greenOpacity  = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack{
                trafficLightsSetup
                Spacer()
                ButtonView(title: buttonText, action: colorSetup)
            }
        }
    }
    
    var trafficLightsSetup: some View {
        VStack {
            TrafficLights(color: .red, opacity: redOpacity)
            TrafficLights(color: .yellow, opacity: yellowOpacity)
            TrafficLights(color: .green, opacity: greenOpacity)
        }
    }
    
    private func colorSetup() {
        
        tapCount += 1
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        if tapCount == 1 {
            redOpacity = lightIsOn
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOff
            buttonText = "NEXT"
        } else if tapCount == 2 {
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
            greenOpacity = lightIsOff
        } else if tapCount == 3 {
            redOpacity = lightIsOff
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOn
            tapCount = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
