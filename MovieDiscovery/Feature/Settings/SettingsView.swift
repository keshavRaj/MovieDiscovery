//
//  SettingsView.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 10/08/26.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.userThemeStore)
    private var themeStore: UserThemeStore
    
    @Environment(\.moviePalette)
    private var palette: MoviePalette
    
    var body: some View {
        Form {
            Section {
                Picker(selection: Binding(
                    get: { themeStore.theme },
                    set: { themeStore.theme = $0 }
                )
                ){
                    Text("Light").tag(UserTheme.light)
                    Text("Dark").tag(UserTheme.dark)
                    Text("System").tag(UserTheme.system)
                    
                } label: {
                    Text("Select Theme")
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Appearance")
                    .foregroundStyle(palette.colors.text.primary)
            }
            .background(palette.colors.surface.background)
        }
        .scrollContentBackground(.hidden)
        .background(palette.colors.surface.background)
    }
}

#Preview {
    SettingsView()
}
