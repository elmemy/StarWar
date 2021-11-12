//
//  CatModel.swift
//  Star Wars
//
//  Created by Ahmed Elmemy on 12/11/2021.
//

import Foundation
import SwiftUI

struct CatModel: Codable {
    let results: [Cat]
}


// MARK: - Cat
struct Cat: Codable,Identifiable {
    var id = UUID()
    let name, height, mass, hairColor: String
    let skinColor, eyeColor, birthYear, gender: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case name, height, mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender, image
    }
}
