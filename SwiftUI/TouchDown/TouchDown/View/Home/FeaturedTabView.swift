//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by calmkeen on 1/20/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .previewDevice("iPhone 12 Pro")
        .background(Color.gray)
}
