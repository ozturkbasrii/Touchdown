//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 3.10.2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
