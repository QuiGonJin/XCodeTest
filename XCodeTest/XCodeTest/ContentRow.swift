//
//  ContentRow.swift
//  XCodeTest
//
//  Created by Kevin Chen on 10/14/20.
//  Copyright © 2020 Kevin Chen. All rights reserved.
//

import SwiftUI

struct ContentRow: View {
    
    var codeName:String
    var profileImageName:String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(profileImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()
            VStack (alignment: .leading) {
                Text("Codename: \(codeName)")
                    .font(.title)
            }
            Spacer()
        }.padding()
    }
}

//That if DEBUG stuff isn't here anymore
//no longer needed in our XCode version
struct ContentRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentRow(codeName: "scv", profileImageName: "scv")
    }
}
