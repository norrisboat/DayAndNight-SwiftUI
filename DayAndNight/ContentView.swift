//
//  ContentView.swift
//  DayAndNight
//
//  Created by Norris Aboagye on 06/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDay: Bool = true
    
    var body: some View {
        
        VStack {
            Spacer()
                .frame(height: 40)
            AnimatedCircles(isDay: isDay)
            Text("Choose a style")
                .fontWeight(.bold)
                .foregroundColor(isDay ?  .black : .white)
            Spacer()
                .frame(height: 15)
            Text("Pop or subtle. Day or night.\nCustomize our interface")
                .fontWeight(.medium)
                .font(.system(size: 15))
                .foregroundColor(isDay ?  .black : .white)
            Spacer()
                .frame(height: 30)
            ToggleButton(isDay: $isDay)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(isDay ? .white : .black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
