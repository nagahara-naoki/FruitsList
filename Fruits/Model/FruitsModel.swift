//
//  FruitsModel.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct Fruite: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
