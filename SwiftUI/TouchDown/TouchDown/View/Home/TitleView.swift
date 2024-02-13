//
//  TitleView.swift
//  TouchDown
//
//  Created by calmkeen on 1/21/24.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PREVIEW
    
    var title: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
