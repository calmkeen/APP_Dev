//
//  FruitModel.swift
//  FruitCard
//
//  Created by calmkeen on 2023/05/01.
//

import SwiftUI

//MARK: - Fruit dataModel

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
