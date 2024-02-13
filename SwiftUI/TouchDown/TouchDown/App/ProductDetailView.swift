//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by calmkeen on 1/21/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            //NaviBar
            NavigationBarDetailView()
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail bottom part
            VStack(alignment: .center, spacing:  0,  content: {
                //Ratings + Size
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?  .description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: Scroll
                
                //quantity
                QuantityFavouritesDetailView()
                    .padding(.vertical, 10)
                //add to cart
                
                AddToCartDetailview()
                    .padding(.bottom,20)
                Spacer()
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        })//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
        Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        ).ignoresSafeArea(.all, edges: .all)

        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
