//
//  AddToCartDetailview.swift
//  TouchDown
//
//  Created by calmkeen on 1/27/24.
//

import SwiftUI

struct AddToCartDetailview: View {
    //MARK: - Property
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailview()
        .environmentObject(Shop())
}
