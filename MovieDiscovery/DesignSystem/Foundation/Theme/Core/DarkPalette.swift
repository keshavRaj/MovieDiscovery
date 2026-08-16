//
//  DarkPalette.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 08/08/26.
//

import SwiftUI

struct DarkPalette: MoviePalette {
    let colors: MovieColors
    let typography: MovieTypography = .default
    let spacing: MovieSpacing = .default
    
    init() {
        colors = MovieColors(
            surface: Self.makeSurfaceColors(),
            text: Self.makeTextColors(),
            border: Self.makeBorderColors(),
            accent: Self.makeAccentColors(),
            feedback: Self.makeFeedbackColors()
        )
    }
    
    private static func makeSurfaceColors() -> SurfaceColors {
        SurfaceColors(
            background: Color(hex: "#2D2D34"),
            normal: Color(hex: "#0F0F0F").opacity(0.75),
            elevated: Color(hex: "#16161A")
        )
    }
    
    private static func makeTextColors() -> TextColors {
        TextColors(
            primary: Color(hex: "#FFFFFF"),
            secondary: Color(hex: "#9CA3AF"),
            tertiary: Color(hex: "#6B7280")
        )
    }
    
    private static func makeBorderColors() -> BorderColors {
        BorderColors(
            normal: Color(hex: "#2D2D34"),
            active: Color(hex: "#E50914")
        )
    }
    
    private static func makeAccentColors() -> AccentColors {
        AccentColors(
            primary: Color(hex: "#E50914"),
            disabled: Color(hex: "#6E0207")
        )
    }
    
    private static func makeFeedbackColors() -> FeedbackColors {
        let successColors = SuccessColors(
            tint: Color(hex: "#10B981"),
            foreground: Color(hex: "#FFFFFF")
        )
        
        let errorColors = ErrorColors(
            tint: Color(hex: "#E50914"),
            foreground: Color(hex: "#FFFFFF")
        )
        
        return FeedbackColors(
            success: successColors,
            error: errorColors
        )
    }
}
