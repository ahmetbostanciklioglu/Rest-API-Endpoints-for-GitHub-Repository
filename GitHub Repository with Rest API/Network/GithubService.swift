//
//  GithubService.swift
//  GitHub Repository with Rest API
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

actor GithubService {
    static let instance = GithubService()
    private let decoder = JSONDecoder()
    private init() { }

    func githubRepoService<T: Decodable>(url: Endpoint) async throws -> T {
        guard let url = url.url else {
            throw NetworkError.invalidURL
        }
#if DEBUG
        print("Fetching from URL: \(url.absoluteString)")
#endif
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.invalidURLResponse
        }
#if DEBUG
        print("Response statusCode: \(httpResponse.statusCode)")
#endif
        guard httpResponse.statusCode == 200 else {
            throw NetworkError.invalidStatusCode(httpResponse.statusCode)
        }
        
        do {
#if DEBUG
            if let jsonString = String(data: data, encoding: .utf8) {
                print("Raw JSON response:\n\(jsonString)")
            }
#endif
            return try decoder.decode(T.self, from: data)
        } catch let decodingError as DecodingError {
            print("Detailed decoding error: \(decodingError)")
            throw NetworkError.invalidDecoding(decodingError.localizedDescription)
        } catch {
            print("Unknown error: \(error)")
            print(error.localizedDescription)
            throw NetworkError.invalidDecoding(error.localizedDescription)
        }
    }
}
