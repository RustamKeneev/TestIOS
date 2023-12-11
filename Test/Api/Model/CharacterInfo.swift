//
//  CharacterInfo.swift
//  Test
//
//  Created by Rustam Keneev on 10/12/23.
//

import Foundation

struct CharacterInfo: Codable {
    var count: Int? = nil
    var pages: Int? = nil
    var next: String? = nil
    var prev: String? = nil
    
    enum CodingKeys: String, CodingKey {
        case count, pages
        case next
        case prev
    }
}
