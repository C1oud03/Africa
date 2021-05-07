//
//  MainView.swift
//  Africa
//
//  Created by Семён Рытенков on 07.05.2021.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                } //: TAB ITEM
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Browse")
                } //: TAB ITEM
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                } //: TAB ITEM
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                } //: TAB ITEM
        } //: TAB
    } //: BODY
}

// MARK: - PREVIEW

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
