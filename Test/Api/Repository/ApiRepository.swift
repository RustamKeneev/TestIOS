//
//  ApiRepository.swift
//  Test
//
//  Created by Rustam Keneev on 9/12/23.
//

import Foundation

class ApiRepository{
    
    private let apiClient = ApiClient()

    private static let shared = ApiRepository()
    
    static func newInstanse() -> ApiRepository {
        return shared
    }
    
    func getData(completion: @escaping (RickAndMortyAPI?, String?, Error?) -> Void) {
        let rickAndMortyAPI = RickAndMortyAPI()
        completion(rickAndMortyAPI, nil, nil)
    }
    
    func getCharactersData(completion: @escaping (RickAndMortyAPIEndpoint?, String?, Error?) -> Void) {
        apiClient.sendGetRequest(url: Constants.URL.CHARACTER, completion: completion)
    }
    
    func getLocationsData(completion: @escaping (RickAndMortyAPIEndpoint?, String?, Error?) -> Void) {
        apiClient.sendGetRequest(url: Constants.URL.LOCATIONS, completion: completion)
    }
    
    func getEpisodesData(completion: @escaping (RickAndMortyAPIEndpoint?, String?, Error?) -> Void) {
        apiClient.sendGetRequest(url: Constants.URL.EPISODES, completion: completion)
    }
}

