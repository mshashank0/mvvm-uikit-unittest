//
//  PODViewModel.swift
//  AstronomyNASA
//  Handle view logic and call services
//  Created by Shashank Mishra on 07/02/23.
//

import Foundation

class PODViewModel: NSObject {
    
    private let podService: PODServiceDelegate
    
    var pod: Observable<Pod> = Observable(nil)
    
    // Injecting service dependency
    init(podService: PODServiceDelegate = PODService()) {
        self.podService = podService
    }
    
    func getPictureOfDay() {
        // Get pod model from the local persistence storage
        podService.getPod { [weak self] result in
            switch result {
            case .success(let value):
                self?.pod.value = value
            case .failure(_): break
                //TO DO :- Handle error
            }
        }
    }
}
