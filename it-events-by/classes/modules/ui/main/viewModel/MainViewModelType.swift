//
//  MainViewModelType.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation

protocol MainViewModelType: ViewModelType {
    func changeTabAction(to: TabBarItemProtocol, from: TabBarItemProtocol)
}
