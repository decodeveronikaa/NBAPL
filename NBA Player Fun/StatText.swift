//
//  StatText.swift
//  NBA Player Fun
//
//  Created by Veronica Markova on 2/28/21.
//

import SwiftUI

struct StatText: View {
    var statName: String
    var statValue: String
    
    
    var body: some View {
        HStack{
            Text(statName + ":").font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 45)).fontWeight(.light).padding(.trailing, 30).foregroundColor(.red)
            Spacer()
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "32")
    }
}
}
