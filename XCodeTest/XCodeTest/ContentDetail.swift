//
//  ContentDetail.swift
//  XCodeTest
//
//  Created by Kevin Chen on 10/14/20.
//  Copyright © 2020 Kevin Chen. All rights reserved.
//

import SwiftUI

struct ContentDetail: View {
    
    var contentText:String
    
    var body: some View {
        VStack {
            Text("ABOUT THIS GUY: ")
            Text(contentText)
        }
    }
}

struct ContentDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetail(contentText: "Testing Reclone! Text")
    }
}
