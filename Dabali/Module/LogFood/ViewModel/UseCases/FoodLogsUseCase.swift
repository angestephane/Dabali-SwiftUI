//
//  FoodLogsUseCase.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

protocol FoodLogsUseCase {
    func fetchFoodLogs(success: @escaping ([FoodEntry]) -> Void, failure: @escaping (any Error) -> Void)
}

class FoodLogsUseCaseImplementation: FoodLogsUseCase {
    
    let service: ServicesProtocol
    
    init(service: ServicesProtocol) {
        self.service = service
    }
    
    func fetchFoodLogs(success: @escaping ([FoodEntry]) -> Void, failure: @escaping (any Error) -> Void) {
        service.fetchFoodLogs(success: { logs in
            success(logs)
        }, failure: { error in
            failure(error)
        })
    }
}
