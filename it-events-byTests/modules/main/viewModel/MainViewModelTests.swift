//
//  MainViewModelTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
import Foundation
@testable import it_events_by

class MainViewModelTests: XCTestCase {
    
    func testWhenChangeTabFromViewModelThenRouterChangesTabs() {
        let session = AppSession()
        let viewModel = MainViewModel(session: session)
        
        let view = UIViewController()
        let router = MainRouter(session: session, view: view)
        viewModel.router = router
        
        let firstTab = TabBarItem(view: UIViewController(), button: UIButton())
        let secondTab = TabBarItem(view: UIViewController(), button: UIButton())
        viewModel.changeTabAction(to: secondTab, from: firstTab)
        
        XCTAssertEqual(firstTab.view, router.fromItem?.view)
        XCTAssertEqual(firstTab.button, router.fromItem?.button)
        XCTAssertEqual(secondTab.view, router.toItem?.view)
        XCTAssertEqual(secondTab.button, router.toItem?.button)
    }
    
}
