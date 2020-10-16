//
//  ContentView.swift
//  XCodeTest
//
//  Created by Kevin Chen on 10/14/20.
//  Copyright © 2020 Kevin Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            VStack(){
                List(developers) { developer in
                    NavigationLink(
                        destination: ContentDetail(contentText: developer.aboutText)) {
                                ContentRow(codeName: developer.codeName, profileImageName: developer.profileImageName)
                    }
                }
            }
        })
        .navigationBarHidden(true)
    }
    
    /*
     You may be wondering where the variable 'developers' came from
     
     To find out, right click on 'developers' (the green one) then select "Jump to Definition"
     */
    
}

//If you're wondering where that "if DEBUG" code is, Apple removed it
//In newer versions of XCode, the compiler automatically ignores PreviewProvider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
