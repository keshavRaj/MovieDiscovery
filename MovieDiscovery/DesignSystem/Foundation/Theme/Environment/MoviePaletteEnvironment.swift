//
//  MoviePaletteEnvironment.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 10/08/26.
//

import SwiftUI

struct MoviePaletteEnvironmentKey: EnvironmentKey {
    static let defaultValue: any MoviePalette = DarkPalette()
}

extension EnvironmentValues {
    var moviePalette: any MoviePalette {
        get { self[MoviePaletteEnvironmentKey.self] }
        set { self[MoviePaletteEnvironmentKey.self] = newValue }
    }
}
