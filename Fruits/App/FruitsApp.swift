//
//  FruitsApp.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage ("isOnboarding") var isOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
