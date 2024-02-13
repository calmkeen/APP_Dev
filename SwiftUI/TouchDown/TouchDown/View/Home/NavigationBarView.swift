//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by calmkeen on 1/13/24.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    
    @State private var isANimated: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
                .opacity(isANimated ? 1 : 0)
                .offset(x: 0, y: isANimated ? 0 : -25)
            LogoView()
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isANimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: -13, y:-15)
            })
            
        }
    }
}

#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
        .padding()
}
