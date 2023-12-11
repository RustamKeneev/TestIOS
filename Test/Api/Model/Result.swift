//
//  Result.swift
//  Test
//
//  Created by Rustam Keneev on 10/12/23.
//

import Foundation

struct Result: Codable {
    var id: Int? = nil
    var name: String? = nil
    var status: Status
    var species: Species
    var type: String? = nil
    var gender: Gender
    var origin: String? = nil
    var location: Location
    var image: String? = nil
    var episode: [String]? = nil
    var url: String? = nil
    var created: String? = nil
}
