//
//  Color+Hex.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 08/08/26.
//

import SwiftUI

extension Color {
    
    init (hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        
        precondition(
            hex.hasPrefix("#"),
            "Hex color must start with '#'."
        )
        
        let value = String(hex.dropFirst())
        
        precondition(
            value.count == 6,
            "Hex color must contain exactly 6 characters."
        )
        
        guard let rgb = UInt32(value, radix: 16) else {
            preconditionFailure("Invalid hex color: \(hex)")
        }
        
        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0
        
        self.init(
            red: red,
            green: green,
            blue: blue
        )
    }
}
