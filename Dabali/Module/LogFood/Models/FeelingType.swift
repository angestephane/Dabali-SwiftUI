//
//  FeelingType.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

enum FeelingType: String, Codable, Identifiable, CaseIterable {
    case great = "great"
    case good = "good"
    case maybe = "maybe"
    case bad = "bad"
    case terrible = "terrible"
    
    var id: String { rawValue }
}

extension FeelingType {
    
    var feelingIcon: String {
        switch self {
        case .great:
            return "☺️"
        case .good:
            return "🙂"
        case .maybe:
            return "😐"
        case .bad:
            return "☹️"
        case .terrible:
            return "😣"
        }
    }
}
