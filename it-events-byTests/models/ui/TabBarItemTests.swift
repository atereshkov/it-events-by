//
//  TabBarItemTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class TabBarItemTests: XCTestCase {
    
    func testInitialization() {
        let view = UIViewController()
        let button = UIButton()
        let item = TabBarItem(view: view, button: button)
        XCTAssertEqual(view, item.view)
        XCTAssertEqual(button, item.button)
    }
    
}
