//
//  BaseViewModelTests.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import it_events_by

class BaseViewModelTests: XCTestCase {
    
    func testInitialization() {
        let session: AppSessionType = AppSession()
        let viewModel = DummyViewModel(session: session)
        let view = DummyView()
        view.viewModel = viewModel
        let router = DummyRouter(session: session, view: view)
        viewModel.router = router
    }
    
    func testWhenViewInitializedThenOnViewDidLoadCalled() {
        let session: AppSessionType = AppSession()
        let viewModel = DummyViewModel(session: session)
        let view = DummyView()
        view.viewModel = viewModel
        view.viewDidLoad()
        XCTAssertEqual(viewModel.onViewDidLoadCalled, true)
    }
    
}
