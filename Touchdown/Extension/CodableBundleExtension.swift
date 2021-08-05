//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by joao camargo on 04/08/21.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file: String) -> T {
        // 1. locate the json file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate File Bundle")
        }
        //2. create property for the data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // create a decoder
        
        let decoder = JSONDecoder()
        
        //create a property for the coded data
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return decodedData
        
        // return the ready to use data
    }
}
