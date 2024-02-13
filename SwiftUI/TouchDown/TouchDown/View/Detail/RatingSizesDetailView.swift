//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by calmkeen on 1/27/24.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    let sizes: [String] = ["XS","X","S","M"]
    
    var body: some View {
        HStack(alignment: .top,spacing: 3, content: {
            VStack(alignment: .leading,spacing:  3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing:  3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName:  "star.fill")
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            Spacer()
            
            //Sizes
            VStack(alignment: .trailing,spacing:  3, content: {
                Text("Sizes")
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundColor(colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(colorGray, lineWidth:  2))
                    }
                })
            })
        })//:HStack
    }
}

#Preview {
    RatingSizesDetailView()
}
