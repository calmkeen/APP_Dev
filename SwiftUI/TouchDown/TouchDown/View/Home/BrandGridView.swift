//
//  BrandGridView.swift
//  TouchDown
//
//  Created by calmkeen on 1/21/24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators:  false, content: {
            LazyHGrid(rows: gridLayout,spacing:  columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })//: Grid
            .frame(height: 200)
            .padding(15)
        })//: Scroll
    }
}

#Preview {
    BrandGridView()
}
