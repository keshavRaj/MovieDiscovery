//
//  UserThemeStore.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 10/08/26.
//

import Foundation
import Observation

@Observable
final class UserThemeStore {
    private let defaults: UserDefaults
    private let userDefaultsKey = "userTheme"
    
    var theme: UserTheme {
        didSet {
            defaults.set(theme.rawValue, forKey: userDefaultsKey)
        }
    }
    
    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
        
        self.theme = defaults.string(forKey: userDefaultsKey)
            .flatMap(UserTheme.init(rawValue:)) ?? .system
    }
}
