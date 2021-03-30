//
//  TrafficLightsLogic.swift
//  TrafficLightsSwiftUI
//
//  Created by PenguinRaja on 28.03.2021.
//

import SwiftUI

struct TrafficLights: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
    
    
}

struct TrafficLights_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLights(color: .red, opacity: 1)
    }
}
