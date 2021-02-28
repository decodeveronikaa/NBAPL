//
//  PlayerList.swift
//  NBA Player Fun
//
//  Created by Veronica Markova on 2/28/21.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView{
        List(players) {
            currentPlayer in
            NavigationLink(destination: ContentView()){
            PlayerRow(player: currentPlayer).frame(height: 80)
            }
        }.navigationBarTitle(Text("NBA Finals Players"))
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
}

