//
//  Meal.swift
//  MVC Welcome
//
//  Created by Denis Bystruev on 25/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

struct Meal {
    var name: String
    var photo: UIImage
    var notes: String
    var rating: Int
    var timestamp: Date
}

// MARK: - Data Representation
extension Meal {
    var stars: String {
        return String(repeating: "⭐️", count: rating)
    }
    
    var formattedTimestamp: String {
        let format = DateFormatter()
        format.dateStyle = .short
        format.timeStyle = .short
        format.locale = Locale.current
        return format.string(from: timestamp)
    }
}

extension Meal {
    static var all: [Meal] {
        return [
            Meal(name: "Яблоки", photo: UIImage(named: "apples")!, notes: "Красные яблоки", rating: 10, timestamp: Date()),
            Meal(name: "Груши", photo: UIImage(named: "pineapples")!, notes: "Жёлтые груши", rating: 5, timestamp: Date()),
            Meal(name: "Каша", photo: UIImage(named: "porridge")!, notes: "Очень вкусная", rating: 3, timestamp: Date()),
            Meal(name: "Суп", photo: UIImage(named: "soup")!, notes: "Сильно жидкий", rating: 7, timestamp: Date()),
        ]
    }
}
