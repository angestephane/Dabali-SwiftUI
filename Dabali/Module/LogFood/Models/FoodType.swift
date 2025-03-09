//
//  FoodType.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

enum FoodType: String, Codable, Identifiable, CaseIterable {
    case breakfast = "breakfast"
    case lunch = "lunch"
    case dinner = "dinner"
    case snack = "snack"
    
    var id: String { rawValue }
}

extension FoodType {
    
    var title: String {
        switch self {
        case .breakfast:
            return "Petit déjeuner"
        case .lunch:
            return "Déjeuner"
        case .dinner:
            return "Dinner"
        case .snack:
            return "Grinotant"
        }
    }
    
    var typeIcon: String {
        switch self {
        case .breakfast:
            return "🍳"
        case .lunch:
            return "🍚"
        case .dinner:
            return "🥗"
        case .snack:
            return "🍫"
        }
    }
}
