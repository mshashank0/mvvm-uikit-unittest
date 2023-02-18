//
//  Helper.swift
//  AstronomyNASA
//
//  Created by Shashank Mishra on 07/02/23.
//

import Foundation

enum DateFormat: String {
    case yyyyMMdd = "yyyy-MM-dd"
}

extension String {
    func isSameAsToday() -> Bool {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormat.yyyyMMdd.rawValue
        let today = dateFormatter.string(from: date)
        return self == today
    }
}
