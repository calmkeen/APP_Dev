//
//  settingslabelView.swift
//  FruitCard
//
//  Created by calmkeen on 2023/05/02.
//

import SwiftUI

struct settingsLabelView: View {
    //MARK: - properties
    
    var labelText: String
    var labelImage: String
    
    //MARK: - body
    var body: some View {
        HStack {
            Text("Fructus".uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct settingslabelView_Previews: PreviewProvider {
    static var previews: some View {
        settingsLabelView(labelText: "Fruit", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
