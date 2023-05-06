//
//  ContentView.swift
//  Africa
//
//  Created by calmkeen on 2023/05/06.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        //MARK: - Body
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            }//: List
            .navigationBarTitle("Africa", displayMode: .large)
        }//: Navi
    }
}

//MARK: - preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
