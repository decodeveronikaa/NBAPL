//
//  ContentView.swift
//  NBA Player Fun
//
//  Created by Veronica Markova on 2/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Image("gs").resizable().aspectRatio(contentMode: .fit)
            Image("steph").clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -90).shadow(radius: 100 )
            Text("Steph Curry").font(.system(size: 40)).fontWeight(.heavy)
            
            
            StatText(statName: "Age", statValue: "31")
            StatText(statName: "Height", statValue: "170cm")
            StatText(statName: "Weight", statValue: "190lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
