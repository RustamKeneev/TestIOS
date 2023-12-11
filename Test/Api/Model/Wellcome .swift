//
//  Wellcome .swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import Foundation

struct Welcome: Codable {
    var info: Info
    var results: [Result]? = nil
}
