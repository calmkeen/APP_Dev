//
//  CardView.swift
//  Hike
//
//  Created by calmkeen on 2023/12/11.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        //MARK: - card
        ZStack {
            CustomBackgroundView()
            ZStack{
                Circle()
                    .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                                .customSalmonLight
                        ],
                        startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
            }
        }//: Card
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
