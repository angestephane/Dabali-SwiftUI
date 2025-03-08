//
//  HttpRepositoryConfig.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
    case DELETE = "DELETE"
    case PUT = "PUT"
    case PATCH = "PATCH"
}

enum NetworkError: Error {
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case serverError
    case unknown
    case invalidURL
    case decodingError
}

struct HttpRepositoryConfig {
    static private let scheme: String = "http"
    static private let baseUrl: String = "localhost:8080"
    
    static func getFullUrl(endpoint: String) -> String {
        return "\(scheme):://\(baseUrl)\(endpoint)"
    }
    
    static func getDefauldHeader() -> [String: String] {
        return ["Content-Type": "application/json"]
    }
}
