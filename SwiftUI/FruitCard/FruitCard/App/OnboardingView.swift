//
//  OnboardingView.swift
//  FruitCard
//
//  Created by calmkeen on 2023/04/30.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...11]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
