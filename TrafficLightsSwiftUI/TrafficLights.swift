//
//  TrafficLightsLogic.swift
//  TrafficLightsSwiftUI
//
//  Created by PenguinRaja on 28.03.2021.
//

import SwiftUI

struct TrafficLights: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
    
    
}

struct TrafficLights_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLights(color: .white)
    }
}
