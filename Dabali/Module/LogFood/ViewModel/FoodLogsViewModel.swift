//
//  FoodLogsViewModel.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import SwiftUI

class FoodLogsViewModel: ObservableObject {
    
    private let foodLogsUseCase: FoodLogsUseCase
    
    @Published var foodLogsEntry: [FoodEntry] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    init(factory: FoodLogsViewModelFactory) {
        self.foodLogsUseCase = factory.makeFoodLogs()
    }
    
    func getFoodLogs() {
        isLoading = true
        
        foodLogsUseCase.fetchFoodLogs(success: { [weak self] logs in
            guard let strongSelf = self else { return }
            strongSelf.foodLogsEntry = logs
            strongSelf.isLoading = false
        }, failure: { [weak self] error in
            guard let strongSelf = self else { return }
            strongSelf.errorMessage = "error_message".localized
            strongSelf.isLoading = false
        })
    }
}
