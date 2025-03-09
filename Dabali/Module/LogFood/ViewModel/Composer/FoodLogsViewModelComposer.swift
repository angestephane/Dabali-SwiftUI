//
//  FoodLogsViewModelComposer.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

class FoodLogsViewModelComposer: FoodLogsViewModelFactory {
    func makeFoodLogs() -> any FoodLogsUseCase {
        return FoodLogsUseCaseImplementation(service: ServicesImplementation())
    }
}
