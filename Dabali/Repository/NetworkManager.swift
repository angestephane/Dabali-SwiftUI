//
//  NetworkManager.swift
//  Dabali
//
//  Created by stephane.boguhe on 09.03.25.
//

import Foundation

class NetworkManager {
    
    static let session = URLSession.shared
    
    static func requestData(for request: URLRequest) async throws -> Data {
        do {
            let (data, response) = try await session.data(for: request)
            
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.unknown
            }
            
            if (200...299).contains(httpResponse.statusCode) { return data }
            
            switch httpResponse.statusCode {
            case 400: throw NetworkError.badRequest
            case 401: throw NetworkError.unauthorized
            case 403: throw NetworkError.forbidden
            case 404: throw NetworkError.notFound
            case 500: throw NetworkError.serverError
            default: throw NetworkError.unknown
            }
            
        } catch {
            throw NetworkError.unknown
        }
    }
}
