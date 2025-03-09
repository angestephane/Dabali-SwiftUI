//
//  FoodModel.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

struct FoodEntry: Codable, Identifiable {
    var id: String
    var timestamp: String
    var foodName: String
    var foodType: FoodType
    var feeling: FeelingType
    var isWorthIt: Bool
    var notes: String?
}
