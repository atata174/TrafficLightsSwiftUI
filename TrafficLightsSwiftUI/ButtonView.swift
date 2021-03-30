//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
        }
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

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
