//
//  MainRouterTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class MainRouterTests: XCTestCase {

    func testWhenChangeTabThenContainerChangeViews() {
        let session = AppSession()
        let containerView = UIView()
        let view = MainViewMock(containerView: containerView)
        let router = MainRouter(session: session, view: view)
        let firstTab = TabBarItem(view: UIViewController(), button: UIButton())
        let secondTab = TabBarItem(view: UIViewController(), button: UIButton())
        
        router.changeTab(to: secondTab, from: firstTab)
        
        XCTAssertNil(firstTab.view.parent)
        XCTAssertFalse(view.containerView.subviews.contains(firstTab.view.view))
        XCTAssertNil(firstTab.view.view.superview)
        
        XCTAssertTrue(view.children.contains(secondTab.view))
        XCTAssertEqual(secondTab.view.view.frame, view.containerView.bounds)
        XCTAssertTrue(view.containerView.subviews.contains(secondTab.view.view))
        XCTAssertEqual(secondTab.view.parent, view)
    }

}
