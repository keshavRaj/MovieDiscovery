//
//  UserThemeStoreEnvironment.swift
//  MovieDiscovery
//
//  Created by Keshav Raj on 10/08/26.
//

import SwiftUI

struct UserThemeStoreEnvironmentKey: EnvironmentKey {
    static let defaultValue: UserThemeStore = UserThemeStore()
}

extension EnvironmentValues {
    var userThemeStore: UserThemeStore {
        get { self[UserThemeStoreEnvironmentKey.self] }
        set { self[UserThemeStoreEnvironmentKey.self] = newValue }
    }
}

