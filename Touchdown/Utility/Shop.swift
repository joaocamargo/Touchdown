//
//  Shop.swift
//  Touchdown
//
//  Created by joao camargo on 09/08/21.
//

import Foundation

class Shop : ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}



