//
//  MainTabBarManagerTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class MainTabBarManagerTests: XCTestCase {
    
    func testInitialization() {
        let views = [UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton()]
        let tabBarManager = MainTabBarManager(views: views, controls: controls)
        tabBarManager.initialize()
        XCTAssertEqual(views.count, tabBarManager.items.count)
    }
    
    func testWhenIncorrectViewsAndControlsCountThenObjectNotInitialized() {
        let views = [UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton(), UIButton()]
        let tabBarManager = MainTabBarManager(views: views, controls: controls)
        tabBarManager.initialize()
        XCTAssertEqual(0, tabBarManager.items.count)
    }
    
    func testWhenSelectTabThenSelectedIndexIsChanged() {
        let views = [UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton()]
        let tabBarManager = MainTabBarManager(views: views, controls: controls)
        tabBarManager.initialize()
        tabBarManager.selectTab(index: 0)
        XCTAssertEqual(0, tabBarManager.selectedIndex)
    }
    
    func testWhenSelectIncorrectTabThenSelectedIndexIsNotChanged() {
        let views = [UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton()]
        let tabBarManager = MainTabBarManager(views: views, controls: controls)
        tabBarManager.initialize()
        tabBarManager.selectTab(index: 2)
        XCTAssertEqual(0, tabBarManager.selectedIndex)
    }
    
    func testWhenInitializedThenDelegateMethodIsCalled() {
        let views = [UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton()]
        let tabBarManager = MainTabBarManager(views: views, controls: controls)
        let mainTabBarDelegateMock = MainTabBarDelegateMock()
        tabBarManager.delegate = mainTabBarDelegateMock
        tabBarManager.initialize()
        XCTAssertEqual(mainTabBarDelegateMock.setupTabBarCalled, true)
    }
    
    func testWhenTabChangedThenDelegateMethodIsCalled() {
        let views = [UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton()]
        let tabBarManager = MainTabBarManager(views: views, controls: controls)
        let mainTabBarDelegateMock = MainTabBarDelegateMock()
        tabBarManager.delegate = mainTabBarDelegateMock
        tabBarManager.initialize()
        tabBarManager.selectTab(index: 0)
        XCTAssertEqual(mainTabBarDelegateMock.controllerSwitchedCalled, true)
    }
    
}
