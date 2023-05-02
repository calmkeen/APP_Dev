//
//  ContentView.swift
//  FruitCard
//
//  Created by calmkeen on 2023/04/29.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruit")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } //:button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
