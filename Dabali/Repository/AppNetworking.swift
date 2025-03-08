//
//  NetworkManager.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

class AppNetworking {
    
    static func buildRequest(endpoint: String, httpMethode: HTTPMethod) throws -> URLRequest {
        
        let urlString = HttpRepositoryConfig.getFullUrl(endpoint: endpoint)
        
        var component = URLComponents(string: urlString)
        
        guard let url = component?.url else { throw NetworkError.badRequest }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethode.rawValue
        
        for (key, value) in HttpRepositoryConfig.getDefauldHeader() {
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
        
        return urlRequest
    }
}
