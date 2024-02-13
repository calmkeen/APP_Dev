//
//  Shop.swift
//  TouchDown
//
//  Created by calmkeen on 2/11/24.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct: Bool = false
    @Published  var selectedProduct: Product? //= nil
}
