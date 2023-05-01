//
//  ScoureLinkView.swift
//  FruitCard
//
//  Created by calmkeen on 2023/05/01.
//

import SwiftUI

struct SourceLinkView: View {
    
    
    
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content source")
                Spacer()
                Link("wekipedia", destination: URL(string: "httrps://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct ScoureLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
