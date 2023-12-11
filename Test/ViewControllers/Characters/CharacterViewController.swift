//
//  CharacterViewController.swift
//  Test
//
//  Created by Rustam Keneev on 11/12/23.
//

import Foundation
import UIKit


class CharacterViewController: BaseViewController{
    
    var characterURL: URL?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        
        if let characterURL = characterURL {
            // Действия с characterURL
            print("Received character URL: \(characterURL)")
        }
    }
}
