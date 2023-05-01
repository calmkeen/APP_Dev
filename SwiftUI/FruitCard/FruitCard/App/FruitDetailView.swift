//
//  FruitDetailView.swift
//  FruitCard
//
//  Created by calmkeen on 2023/05/01.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing:  20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headLine
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //nutrients
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        //subheadline
                        Text("Learn more about\(fruit.title).".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//: Vstack
                    .padding()
                    .frame(maxWidth: 640,alignment: .center)
                }//: vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:Scroll
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iphone 14 Pro")
    }
}
