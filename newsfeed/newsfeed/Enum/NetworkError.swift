//
//  NetworkError.swift
//  newsfeedSkeleton
//
//  Created by Jordan Yee on 3/28/22.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Failed to decode the error from the service"
        case .errorCode(let code):
            return "\(code) - Something went wrong"
        case.unknown:
            return "The error is unknown"
        }
    }
}
