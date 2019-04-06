//
//  MainTabBarManagerProtocol.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit

protocol MainTabBarManagerProtocol: class {
    var delegate: MainTabBarDelegate? { get set }
    var items: [TabBarItemProtocol] { get }
    var selectedIndex: Int { get }
    
    func initialize()
    func selectTab(index: Int)
}
