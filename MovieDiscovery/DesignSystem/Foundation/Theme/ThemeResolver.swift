//
//  ThemeResolver.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 08/08/26.
//


struct ThemeResolver {
    static func resolve(for theme: Theme) -> any MoviePalette {
        switch theme {
        case .light:
            return LightPalette()
        case .dark:
            return DarkPalette()
        }
    }
}
