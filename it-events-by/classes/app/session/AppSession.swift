//
//  Session.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Swinject

final class AppSession: AppSessionType {
    
    private let container = Container()
    
    init() {
        container.register(NetworkManagerProtocol.self) { _ -> NetworkManagerProtocol in
            return NetworkManager()
        }.inObjectScope(.container)
    }
    
    func resolve<T>() -> T {
        guard let service = container.resolve(T.self) else {
            fatalError("Service is not registered '\(String(describing: T.self))'")
        }
        return service
    }
    
}
