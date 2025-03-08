//
//  HttpRepository+Implementation.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

class ServicesImplementation: ServicesProtocol {
    
    func fetchFoodLogs(success: @escaping (UserFoodLogs) -> Void, failure: @escaping (any Error) -> Void) {
        
        Task {
            do {
                let request = try AppNetworking.buildRequest(
                    endpoint: URLConstants.foodlogs,
                    httpMethode: .GET
                )
                let data = try await NetworkManager.requestData(for: request)
                let foodLogs: UserFoodLogs = try JSONDecoderService.decode(data: data)
                DispatchQueue.main.async {
                    success(foodLogs)
                }
                
            } catch {
                DispatchQueue.main.async {
                    failure(error)
                }
            }
        }
    }
}

