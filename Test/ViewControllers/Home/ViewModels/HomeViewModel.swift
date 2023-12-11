//
//  HomeViewModel.swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import Foundation

protocol HomeDelegate: AnyObject {
    func showCharacters(models: URL)
    func showLocations(models: URL)
    func showEpisodes(models: URL)
    func showNotFound()
}

class HomeViewModel: BaseViewModel {
    private weak var delegate: HomeDelegate? = nil
    
    init(delegate: HomeDelegate) {
       self.delegate = delegate
    }
    
    func fetchData() {
        apiClient.getData { [weak self] (data, _, _) in
            guard let self = self else { return }
            
            guard let data = data else {
                self.delegate?.showNotFound()
                return
            }

            self.delegate?.showCharacters(models: data.charactersURL)
            self.delegate?.showLocations(models: data.locationsURL)
            self.delegate?.showEpisodes(models: data.episodesURL)
        }
    }
}
