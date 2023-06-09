//
//  MainView.swift
//  Africa
//
//  Created by calmkeen on 2023/05/06.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("br\\Browse")
                }
            
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
            GallaryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallary")
                }
        }//:Tab
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
