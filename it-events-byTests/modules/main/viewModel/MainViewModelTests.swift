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
    
//    override func setUp() {
//        let session = AppSession()
//        viewModel = MainViewModel(session: session)
//    }
    
    func test() {
        let session = AppSession()
        let viewModel = MainViewModel(session: session)
        
        let containerView = UIView()
        let view = MainViewMock(containerView: containerView)
        let router = MainRouter(session: session, view: view)
        viewModel.router = router
        
        let firstTab = TabBarItem(view: UIViewController(), button: UIButton())
        let secondTab = TabBarItem(view: UIViewController(), button: UIButton())
        viewModel.changeTabAction(to: secondTab, from: firstTab)
        
        XCTAssertTrue(router.view?.children.contains(secondTab.view) ?? false)
    }
    
    func test2() {
        let session = AppSession()
        let viewModel = MainViewModel(session: session)
        
        let view = UIViewController()
        let router = MainRouter(session: session, view: view)
        viewModel.router = router
        
        let firstTab = TabBarItem(view: UIViewController(), button: UIButton())
        let secondTab = TabBarItem(view: UIViewController(), button: UIButton())
        viewModel.changeTabAction(to: secondTab, from: firstTab)
    }
    
}
