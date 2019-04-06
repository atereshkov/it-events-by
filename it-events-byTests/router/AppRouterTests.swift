//
//  AppRouterTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class AppRouterTests: XCTestCase {
    
    func testRouterInitialization() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let session: AppSessionType = AppSession()
        let _: AppRouterProtocol = AppRouter(window: window, session: session)
    }
    
    func testRouterRootViewControllerIsSet() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let session: AppSessionType = AppSession()
        let router: AppRouterProtocol = AppRouter(window: window, session: session)
        router.start(animated: true)
        XCTAssertNotNil(router.rootViewController)
    }
    
    func testIfRouterNotStartedThenRootViewIsNil() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let session: AppSessionType = AppSession()
        let router: AppRouterProtocol = AppRouter(window: window, session: session)
        XCTAssertNil(router.rootViewController)
    }
    
}
