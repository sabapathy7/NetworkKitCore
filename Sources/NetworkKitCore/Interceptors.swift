////
//  Interceptors.swift
//  NetworkKitCore
//
//  Created by Kanagasabapathy on 25.08.26.
//


import Foundation

public protocol RequestAdapting: Sendable {
    func adapt(_ request: URLRequest) async throws -> URLRequest
}

public protocol RequestRetrying: Sendable {
    func retry(for request: URLRequest, dueTo error: Error, attempt: Int) async -> RetryResult
}

public enum RetryResult: Sendable {
    case doNotRetry
    case retryAfter(TimeInterval)
}
