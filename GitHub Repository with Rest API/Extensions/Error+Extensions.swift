//
//  Error+Extensions.swift
//  GitHub Repository with Rest API
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidURLResponse
    case invalidStatusCode(Int)
    case invalidDecoding(String)
    
    var localizedDescription: String {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidURLResponse:
            return "Invalid response from server"
        case .invalidStatusCode(let code):
            return "Server returned status code \(code)"
        case .invalidDecoding(let message):
            return "Decoding error: \(message)"
        }
    }
}

enum DataError: Error {
    case invalidData
}
