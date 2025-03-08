//
//  FoodLogsViewModel.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import SwiftUI

class FoodLogsViewModel {
    
    private let foodLogsUseCase: FoodLogsUseCase
    
    init(factory: FoodLogsViewModelFactory) {
        self.foodLogsUseCase = factory.makeFoodLogs()
    }
    
    func getFoodLogs() {
        foodLogsUseCase.fetchFoodLogs()
    }
}
