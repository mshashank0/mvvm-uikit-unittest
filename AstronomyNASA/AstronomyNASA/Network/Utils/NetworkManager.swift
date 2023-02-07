//
//  NetworkManager.swift
//  AstronomyNASA
//  Monitor internet connection
//  Created by Shashank Mishra on 07/02/23.
//

import Network

protocol NetworkManagerDelegate {
    func isConnected() -> Bool
}

class NetworkManager: NetworkManagerDelegate {
    
    static let shared = NetworkManager()
    private var monitor: NWPathMonitor

    private init() {
        monitor = NWPathMonitor()
        monitor.start(queue: .global())
    }
 
    // Get connection is satisfied on not
    func isConnected() -> Bool {
        return monitor.currentPath.status == .satisfied
    }
}
