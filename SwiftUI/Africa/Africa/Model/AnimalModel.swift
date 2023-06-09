//
//  AnimalModel.swift
//  Africa
//
//  Created by calmkeen on 2023/05/06.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

