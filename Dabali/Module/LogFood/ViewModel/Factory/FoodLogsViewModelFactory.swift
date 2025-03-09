//
//  FoodLogsViewModelFactory.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

protocol FoodLogsViewModelFactory {
    func makeFoodLogs() -> FoodLogsUseCase
}
