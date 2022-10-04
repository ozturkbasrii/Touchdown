//
//  Shop.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 4.10.2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
