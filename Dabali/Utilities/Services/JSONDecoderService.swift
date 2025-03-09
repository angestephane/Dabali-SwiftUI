//
//  JSONDecoder.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

class JSONDecoderService {
    
    static func decode<T: Decodable>(data: Data) throws -> T {
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw NetworkError.decodingError
        }
    }
}
