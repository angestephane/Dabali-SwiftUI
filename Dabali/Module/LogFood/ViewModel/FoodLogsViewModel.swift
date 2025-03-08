//
//  FoodLogsViewModel.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import SwiftUI

class FoodLogsViewModel: ObservableObject {
    
    private let foodLogsUseCase: FoodLogsUseCase
    
    @Published var foodLogs: UserFoodLogs?
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    init(factory: FoodLogsViewModelFactory) {
        self.foodLogsUseCase = factory.makeFoodLogs()
    }
    
    func getFoodLogs() {
        
        foodLogs = nil
        isLoading = true
        
        foodLogsUseCase.fetchFoodLogs(success: { [weak self] logs in
            guard let strongSelf = self else { return }
            strongSelf.foodLogs = logs
            strongSelf.isLoading = false
        }, failure: { [weak self] error in
            guard let strongSelf = self else { return }
            strongSelf.errorMessage = "Quelque chose est cassé"
            strongSelf.isLoading = false
        })
    }
}
