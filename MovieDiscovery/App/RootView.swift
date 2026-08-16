//
//  ContentView.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 06/08/26.
//

import SwiftUI

struct RootView: View {
    
    @Environment(\.colorScheme)
    private var colorScheme: ColorScheme
    
    @State private var themeStore = UserThemeStore()
    
    private var effectiveTheme: Theme {
        switch themeStore.theme {
        case .dark:
            return .dark
        case .light:
            return .light
        case .system:
            return colorScheme == .dark ? .dark : .light
        }
    }
    
    private var moviePalette: any MoviePalette {
        ThemeResolver.resolve(for: effectiveTheme)
    }
    
    var body: some View {
        MovieHomeView()
            .environment(\.moviePalette, moviePalette)
            .environment(\.userThemeStore, themeStore)
    }
}

#Preview {
    RootView()
}
