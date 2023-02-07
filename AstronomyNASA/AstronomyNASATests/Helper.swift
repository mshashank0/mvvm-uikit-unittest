//
//  Helper.swift
//  AstronomyNASATests
//
//  Created by Shashank Mishra on 07/02/23.
//

import Foundation

class Helper {
    static func readLocalFile(_ name: String, with extension: String) -> Data? {
        guard let fileUrl = Bundle.main.url(forResource: "podMockResponse", withExtension: "json") else {
            return nil
        }
        do {
            let data = try Data(contentsOf: fileUrl)
            return data
        }
        catch {
            return nil
        }
    }
}
