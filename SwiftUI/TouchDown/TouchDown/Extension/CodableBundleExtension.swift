//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by calmkeen on 1/20/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        //2. Create a property for the data
        guard let data = try? Data(contentsOf: url)else {
            fatalError("failed to load \(file) in bundle")
        }
        //3. creat a decoder
        let decoder = JSONDecoder()
        //4. create a property for the decode data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode\(file) in bundle")
        }
        //5. Return the reday to use data
        return decodedData
    }
}
