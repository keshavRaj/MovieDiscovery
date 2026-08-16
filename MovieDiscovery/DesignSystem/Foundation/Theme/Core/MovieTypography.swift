//
//  MovieTypography.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 16/08/26.
//

import SwiftUI

struct MovieTypography {
    let displayLarge: Font
    let displayMedium: Font
    
    let headingLarge: Font
    let headingMedium: Font
    let headingSmall: Font
    
    let bodyLarge: Font
    let bodyMedium: Font
    let bodySmall: Font
    
    let labelLarge: Font
    let labelSmall: Font
}

extension MovieTypography {
    static let `default` = MovieTypography(
        displayLarge: .system(size: 34, weight: .bold),
        displayMedium: .system(size: 30, weight: .bold),
        headingLarge: .system(size: 24, weight: .bold),
        headingMedium: .system(size: 20, weight: .semibold),
        headingSmall: .system(size: 18, weight: .semibold),
        bodyLarge: .system(size: 17),
        bodyMedium: .system(size: 15),
        bodySmall: .system(size: 13),
        labelLarge: .system(size: 15, weight: .semibold),
        labelSmall: .system(size: 12, weight: .medium)
    )
}
