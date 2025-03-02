//
//  APIManager.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import Foundation

protocol APIManaging {
    func request<T: Codable>(url: URL) async throws -> T
}

final class APIManager: APIManaging {
    private let session = URLSession.shared
    
    func request<T: Codable>(url: URL) async throws -> T {
        if let cachedData = URLCache.shared.cachedResponse(for: URLRequest(url: url)) {
            print("Cached data in bytes:", cachedData.data)
            
            return try decode(data: cachedData.data)
        } else {
            var request = URLRequest(url: url)
            
            // TODO: Add API key
            request.setValue("", forHTTPHeaderField: "WEB-API-key")
            let (data, response) = try await session.data(for: request)
            
            let cachedData = CachedURLResponse(response: response, data: data)
            URLCache.shared.storeCachedResponse(cachedData, for: URLRequest(url: url))
            
            return try decode(data: data)
        }
    }
    
    private func decode<T:Codable>(data: Data) throws -> T {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    }
}
