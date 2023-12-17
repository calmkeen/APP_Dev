//
//  ContentView.swift
//  Hike
//
//  Created by calmkeen on 2023/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView()
        Image("image-1")
            .resizable()
            .scaledToFit()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
