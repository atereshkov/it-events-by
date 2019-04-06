//
//  BaseViewTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class BaseViewTests: XCTestCase {
    
    func testWhenInitializingWithoutViewModelThenBindViewModelNotCalled() {
        let view = DummyView()
        XCTAssertEqual(view.bindViewModelCalled, false)
    }
    
    func testWhenInitializeWithViewModelThenBindViewModelCalled() {
        let session: AppSessionType = AppSession()
        let view = DummyView()
        view.viewModel = DummyViewModel(session: session)
        view.viewDidLoad()
        XCTAssertEqual(view.bindViewModelCalled, true)
    }
    
}
