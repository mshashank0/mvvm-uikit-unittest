//
//  PODService.swift
//  AstronomyNASA
//
//  Created by Shashank Mishra on 07/02/23.
//

import Foundation

protocol PODServiceDelegate {
    var apiClient: RestAPIClient {get set}
    func getPod(completion: @escaping(Result<Pod, NetworkError>) -> Void)
}

class PODService: PODServiceDelegate {

    var apiClient: RestAPIClient
    
    init(apiClient: RestAPIClient = RestAPIClient()) {
        self.apiClient = apiClient
    }
        
    func getPod(completion: @escaping (Result<Pod, NetworkError>) -> Void) {
        apiClient.getPod(completion: completion)
    }
}

