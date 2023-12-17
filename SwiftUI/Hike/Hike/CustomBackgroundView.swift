//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by calmkeen on 2023/12/11.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. Depth
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            //MARK: - 2. Light
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            //MARK: - 1. Surface
            LinearGradient(
                colors: [
                    .customGrayLight,
                    .customGrayMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
