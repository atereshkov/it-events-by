//
//  NetworkManager.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation
import Alamofire

protocol NetworkManagerProtocol {
    var sessionManager: Alamofire.Session { get }
}

final class NetworkManager: NetworkManagerProtocol {
    
    private struct Constants {
        static let requestTimeout: TimeInterval = 40
        static let resourceTimeout: TimeInterval = 40
    }
    
    private(set) var sessionManager = Alamofire.Session()
    
    init() {
        let configuration: URLSessionConfiguration = .default
        configuration.timeoutIntervalForRequest = Constants.requestTimeout
        configuration.timeoutIntervalForResource = Constants.resourceTimeout
        sessionManager = Alamofire.Session(configuration: configuration)
    }
    
}
