//
//  SessionType.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

protocol AppSessionType {
    func resolve<T>() -> T
}
