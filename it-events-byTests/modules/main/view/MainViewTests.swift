//
//  MainViewTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
import Foundation
import UIKit
@testable import it_events_by

class MainViewTests: XCTestCase {
    
    func testWhenInitializeTabBarThenTabBarStackViewContainsTabBarItems() {
        let session = AppSession()
        let viewModel = MainViewModel(session: session)
        let view = StoryboardScene.Main.initialScene.instantiate()
        view.viewModel = viewModel
        
        let router = MainRouter(session: session, view: view)
        viewModel.router = router
        
        let views = [UIViewController(), UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton(), UIButton()]
        let tabBar: MainTabBarManagerProtocol = MainTabBarManager(views: views, controls: controls)
        view.tabBar = tabBar
        
        view.loadViewIfNeeded()
        
        XCTAssertEqual(tabBar.items.count, view.tabBarStackView.subviews.count)
    }
    
    func testWhenSelectTabThanDelegateMethodCalledAndControllerSwitched() {
        let session = AppSession()
        let viewModel = MainViewModel(session: session)
        let view = StoryboardScene.Main.initialScene.instantiate()
        view.viewModel = viewModel
        
        let router = MainRouter(session: session, view: view)
        viewModel.router = router
        
        XCTAssertNil(router.toItem)
        XCTAssertNil(router.fromItem)
        
        let views = [UIViewController(), UIViewController(), UIViewController()]
        let controls = [UIButton(), UIButton(), UIButton()]
        let tabBar: MainTabBarManagerProtocol = MainTabBarManager(views: views, controls: controls)
        view.tabBar = tabBar
        view.loadViewIfNeeded()
        
        tabBar.selectTab(index: 1)
        
        XCTAssertNotNil(router.toItem)
        XCTAssertNotNil(router.fromItem)
    }
    
}
