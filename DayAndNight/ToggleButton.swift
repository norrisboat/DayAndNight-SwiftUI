//
//  ToggleButton.swift
//  DayAndNight
//
//  Created by Norris Aboagye on 06/03/2022.
//

import SwiftUI

struct ToggleButton: View {
    
    @Binding var isDay: Bool
    var viewWidth = CGFloat(250)
    var viewHeight = CGFloat(50)
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100)
                .foregroundColor(isDay ? Color(red: 227 / 255, green: 227 / 255, blue: 229 / 255) : Color(red: 25 / 255, green: 24 / 255, blue: 31 / 255))
                .frame(height: 50)
            
            RoundedRectangle(cornerRadius: 100)
                .foregroundColor(isDay ? .white : Color(red: 44 / 255, green: 40 / 255, blue: 53 / 255))
                .offset(x: isDay ? -65 : 65)
                .frame(width: viewWidth / 2, height: 50)
                .shadow(color: isDay ? .gray : .clear, radius: 2, x: 0, y: 0)
                .animation(.easeInOut(duration: 0.5), value: isDay)
            
            HStack {
                Button(action: {
                    isDay = true
                }, label: {
                    Text("Light")
                        .foregroundColor(isDay ? .black : Color(red: 119 / 255, green: 119 / 255, blue: 121 / 255))
                        .frame(maxWidth: .infinity)
                })
                Button(action: {
                    isDay = false
                }, label: {
                    Text("Dark")
                        .foregroundColor(isDay ? Color(red: 109 / 255, green: 106 / 255, blue: 116 / 255) : .white)
                        .frame(maxWidth: .infinity)
                })
            }
        }
        .frame(width: viewWidth, height: viewHeight)
    }
}

struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton(isDay: .constant(true))
    }
}
