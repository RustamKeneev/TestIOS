//
//  CharacterModel.swift
//  Test
//
//  Created by Rustam Keneev on 12/12/23.
//

import Foundation

struct CharacterModel: Codable {
    var id: Int? = nil
    var name: String? = nil
    var status: String? = nil
    var species: String? = nil
    var type: String? = nil
    var gender: String? = nil
    var origin: Origin
    var location: Location
    var image: String? = nil
    var episode: [String]? = nil
    var url: String? = nil
    var created: String? = nil
}
