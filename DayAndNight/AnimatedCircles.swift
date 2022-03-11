//
//  AnimatedCircles.swift
//  DayAndNight
//
//  Created by Norris Aboagye on 06/03/2022.
//

import SwiftUI
import Foundation

struct AnimatedCircles: View {
    
    var isDay: Bool
    
    let dayGradientColors = [Color(red: 252 / 255, green: 53 / 255, blue: 94 / 255), Color(red: 237 / 255, green: 114 / 255, blue: 16 / 255)]
    let nightGradientColors = [Color(red: 129 / 255, green: 110 / 255, blue: 253 / 255), Color(red: 132 / 255, green: 194 / 255, blue: 253 / 255)]
    
    var body: some View {
        
        GeometryReader { reader in
            
            Circle()
                .fill(LinearGradient(colors: isDay ? dayGradientColors : nightGradientColors, startPoint: .bottomLeading, endPoint: .topTrailing))
                .position(x: reader.size.width / 2, y: reader.size.height / 2)
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(isDay ? .white : .black)
                .animation(nil, value: isDay)
                .scaleEffect(isDay ? 0 : 1, anchor: .topTrailing)
                .position(x: (reader.size.width / 2) + 30, y: (reader.size.height / 2) - 30)
                .animation(.timingCurve(0.4, 0, 0.2, 1,duration: 1), value: isDay)
                .frame(width: 200, height: 200)
            
        }
        .frame(width: 300, height: 400, alignment: .center)
    }
}

struct AnimatedCircles_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedCircles(isDay: true)
    }
}

extension Color {
    public static var darkOrange: Color {
        return Color(red: 252 / 255, green: 53 / 255, blue: 94 / 255)
    }
}
