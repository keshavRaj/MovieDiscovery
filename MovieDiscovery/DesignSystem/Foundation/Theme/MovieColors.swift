//
//  MovieColors.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 08/08/26.
//

import SwiftUI

struct MovieColors {
    let surface: SurfaceColors
    let text: TextColors
    let border: BorderColors
    let accent: AccentColors
    let feedback: FeedbackColors
}

struct SurfaceColors {
    let background: Color
    let normal: Color
    let elevated: Color
}

struct TextColors {
    let primary: Color
    let secondary: Color
    let tertiary: Color
}

struct BorderColors {
    let normal: Color
    let active: Color
}

struct AccentColors {
    let primary: Color
    let disabled: Color
}

struct FeedbackColors {
    let success: SuccessColors
    let error: ErrorColors
}

struct SuccessColors {
    let tint: Color
    let foreground: Color
}

struct ErrorColors {
    let tint: Color
    let foreground: Color
}
