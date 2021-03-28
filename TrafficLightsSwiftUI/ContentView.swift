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
                buttonSetup
            }
        }
    }
    
    var trafficLightsSetup: some View {
        VStack {
            TrafficLights(color: .red).opacity(redOpacity)
            TrafficLights(color: .yellow).opacity(yellowOpacity)
            TrafficLights(color: .green).opacity(greenOpacity)
        }
        
    }
    var buttonSetup: some View {
        Button(action: {
            tapCount += 1
                if tapCount == 1 {
                    redOpacity = 1
                    yellowOpacity = 0.3
                    greenOpacity = 0.3
                    buttonText = "NEXT"
                } else if tapCount == 2 {
                    redOpacity = 0.3
                    yellowOpacity = 1
                    greenOpacity = 0.3
                } else if tapCount == 3 {
                    redOpacity = 0.3
                    yellowOpacity = 0.3
                    greenOpacity = 1
                    tapCount = 0
                }
        }, label: {
            Text(buttonText)
                .font(.headline)
        })
        .frame(width: 150, height: 50)
        .foregroundColor(Color.white)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(Capsule(style: .continuous)
                    .stroke(Color.white,
                            style: StrokeStyle(lineWidth: 5))
                )
        .padding()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
