//
//  BaseRouterTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class BaseRouterTests: XCTestCase {
    
    func testRouterInititalization() {
        let session: AppSessionType = AppSession()
        let view: UIViewController = UIViewController()
        let router = StubRouter(session: session, view: view)
        XCTAssertEqual(view, router.view)
    }
    
}
