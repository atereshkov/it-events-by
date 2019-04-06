//
//  MainTabBarDelegateMock.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation
@testable import it_events_by

class MainTabBarDelegateMock: MainTabBarDelegate {
    
    private(set) var setupTabBarCalled: Bool = false
    private(set) var controllerSwitchedCalled: Bool = false
    
    func setupTabBar(_ items: [TabBarItemProtocol]) {
        setupTabBarCalled = true
    }
    
    func controllerSwitched(to: TabBarItemProtocol, from: TabBarItemProtocol) {
        controllerSwitchedCalled = true
    }
    
}
