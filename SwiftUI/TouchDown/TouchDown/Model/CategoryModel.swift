//
//  CategoryModel.swift
//  TouchDown
//
//  Created by calmkeen on 1/20/24.
//

import Foundation

struct Category: Codable,Identifiable {
    let id : Int
    let name: String
    let image: String
}
