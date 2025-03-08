//
//  FoodLogsUseCase.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

protocol FoodLogsUseCase {
    func fetchFoodLogs()
}

class FoodLogsUseCaseImplementation: FoodLogsUseCase {
    
    let service: ServicesProtocol
    
    init(service: ServicesProtocol) {
        self.service = service
    }
    
    func fetchFoodLogs() {
        service.fetchFoodLogs(sucsess: <#T##(UserFoodLogs) -> Void#>, failure: <#T##(any Error) -> Void#>)
    }
}
