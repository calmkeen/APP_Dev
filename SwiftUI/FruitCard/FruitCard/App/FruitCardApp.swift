//
//  FruitCardApp.swift
//  FruitCard
//
//  Created by calmkeen on 2023/04/29.
//

import SwiftUI

@main
struct FruitCardApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
