//
//  RickAndMortyAPIEndpoints.swift
//  Test
//
//  Created by Rustam Keneev on 10/12/23.
//

import Foundation

struct RickAndMortyAPIEndpoints: Codable {
    var characters: URL? = nil
    var locations: URL? = nil
    var episodes: URL? = nil
    
    enum CodingKeys: String, CodingKey {
        case characters = "characters"
        case locations = "locations"
        case episodes = "episodes"
    }
}


typealias RickAndMortyAPIEndpoint = [RickAndMortyAPIEndpoints]
