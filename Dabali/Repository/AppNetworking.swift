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
        
        guard let url = URL(string: urlString) else {
            print("URL invalide: \(urlString)")
            throw NetworkError.invalidURL
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethode.rawValue
        
        for (key, value) in HttpRepositoryConfig.getDefauldHeader() {
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
        
        return urlRequest
    }
}
