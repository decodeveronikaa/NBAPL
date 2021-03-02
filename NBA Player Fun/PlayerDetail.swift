//
//  ContentView.swift
//  NBA Player Fun
//
//  Created by Veronica Markova on 2/23/21.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player: Player
    var body: some View {
        VStack{
            
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -90).shadow(radius: 100 )
            Text("Steph Curry").font(.system(size: 40)).fontWeight(.heavy)
             
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: "\(player.height)")
            StatText(statName: "Weight", statValue: "\(player.weight)lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            PlayerDetail(player: players[3]).previewDevice("iPhone 8")
            PlayerDetail(player: players[3]).previewDevice("iPhone 12 Pro Max")
            PlayerDetail(player: players[3]).previewDevice("iPhone SE")
    }
}
}
}
