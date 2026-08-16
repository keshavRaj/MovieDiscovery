//
//  MovieSpacing.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 16/08/26.
//

import Foundation

struct MovieSpacing {
    let xSmall: CGFloat
    let small: CGFloat
    let medium: CGFloat
    let large: CGFloat
    let xLarge: CGFloat
    let xxLarge: CGFloat
}

extension MovieSpacing {
    static let `default` = MovieSpacing(
        xSmall: 4,
        small: 8,
        medium: 16,
        large: 24,
        xLarge: 32,
        xxLarge: 48
    )
}
