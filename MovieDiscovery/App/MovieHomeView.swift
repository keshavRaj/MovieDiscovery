//
//  MovieHomeView.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 10/08/26.
//

import SwiftUI

struct MovieHomeView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Text("Watchlist")
                .tabItem {
                    Label("Watchlist", systemImage: "star.fill")
                }
            NavigationView {
                SettingsView()
            }
            .tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
    }
}

#Preview {
    MovieHomeView()
}
