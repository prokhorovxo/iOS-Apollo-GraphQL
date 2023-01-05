//
//  NetworkService.swift
//  ExampleApolloGraphQL
//
//  Created by Fedor Prokhorov on 06.01.2023.
//

import Apollo
import Foundation

final class NetworkService {
    
    static let shared = NetworkService()
    
    private(set) var apollo = ApolloClient(url: URL(string: "https://api.spacex.land/graphql/")!)
    
    private init() { }
}
