//
//  CategoryModel.swift
//  Touchdown
//
//  Created by joao camargo on 05/08/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id : Int
    let name : String
    let image : String 
}
